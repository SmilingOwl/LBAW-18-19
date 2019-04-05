--TRIGGERS--

--Report must be associated with one answer or one question
DROP TRIGGER IF EXISTS report_association ON report;
DROP FUNCTION IF EXISTS report_asso();
CREATE FUNCTION report_asso() RETURNS TRIGGER AS $$
DECLARE
    num integer;
BEGIN
    IF (NEW.id_question IS NULL AND NEW.id_answer IS NULL) THEN
        RAISE EXCEPTION 'A report (%) most be associated with one answer or question.',NEW.id_report;
    END IF;
    IF (NEW.id_question IS NOT NULL AND NEW.id_answer IS NOT NULL) THEN
        RAISE EXCEPTION 'A report (%) most be associated with one answer or question.',NEW.id_report;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER report_association 
BEFORE INSERT OR UPDATE ON report
FOR EACH ROW 
EXECUTE PROCEDURE report_asso();

--Answer date must be bigger than question date
DROP TRIGGER IF EXISTS answerDate ON answer;
DROP FUNCTION IF EXISTS answerDateCheck();
CREATE FUNCTION answerDateCheck() RETURNS TRIGGER AS $$
DECLARE
    question_date DateTime;
BEGIN
    SELECT "date" INTO question_date FROM question WHERE question.id_question = NEW.id_question;
    IF (question_date > NEW."date") THEN
        RAISE EXCEPTION 'An answer (%) post date must be bigger than the question post date',NEW.id_answer;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER answerDate
BEFORE INSERT OR UPDATE on answer
FOR EACH ROW
EXECUTE PROCEDURE answerDateCheck();

--Bestanswer date must be bigger than question date it's belongs and answer date and attribution date bigger than answer date
DROP TRIGGER IF EXISTS bestAnswerDate ON bestAnswer;
DROP FUNCTION IF EXISTS bestAnswerDateCheck();
CREATE FUNCTION bestAnswerDateCheck() RETURNS TRIGGER AS $$
DECLARE
    question_date DateTime;
    answer_date DateTime;
BEGIN
    SELECT "date" INTO answer_date FROM answer WHERE answer.id_answer = NEW.id_bestAnswer;
    SELECT question."date" INTO question_date FROM question INNER JOIN answer ON (answer.id_answer = NEW.id_bestAnswer) WHERE question.id_question = answer.id_question;
    IF (question_date > answer_date) THEN
        RAISE EXCEPTION 'A answer post date (%) must be more recent than the question post date (%)',answer_date,question_date;
    END IF;
    IF (answer_date > NEW."date") THEN
        RAISE EXCEPTION 'A best answer post date (%) must be more recent than the answer post date (%)',NEW."date",answer_date;
    END IF;
    IF (answer_date > NEW.attributionDate) THEN
        RAISE EXCEPTION 'A best answer post attibution (%) date must be more recent than the answer post date (%)',NEW.attributionDate,answer_date;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER bestAnswerDate
BEFORE INSERT OR UPDATE ON bestAnswer
FOR EACH ROW
EXECUTE PROCEDURE bestAnswerDateCheck();

--A user must be at least 13 years old
DROP TRIGGER IF EXISTS ageCheck ON "user";
DROP FUNCTION IF EXISTS ageCheckFunction();
CREATE FUNCTION ageCheckFunction() RETURNS TRIGGER AS $$
DECLARE
    age integer;
BEGIN
    SELECT (DATE_PART('year', now()) -  DATE_PART('year', NEW.birthdate)) INTO age;
    IF (age<13) THEN
        RAISE EXCEPTION 'A user (%) must be at least 13 years old',NEW.id_user;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ageCheck
BEFORE INSERT OR UPDATE ON "user"
FOR EACH ROW
EXECUTE PROCEDURE ageCheckFunction();

--A user cannot vote his own question
DROP TRIGGER IF EXISTS userQuestionVote ON voteQuestion;
DROP FUNCTION IF EXISTS userQuestionVoteFunction();
CREATE FUNCTION userQuestionVoteFunction() RETURNS TRIGGER AS $$
DECLARE
    question_owner integer;
BEGIN
    SELECT id_user INTO question_owner FROM question WHERE NEW.id_question=question.id_question;
    IF (NEW.username = question_owner) THEN
        RAISE EXCEPTION 'A user (%) cannot vote on his own question (%)',NEW.username,question_owner;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER userQuestionVote
BEFORE INSERT OR UPDATE ON voteQuestion
FOR EACH ROW
EXECUTE PROCEDURE userQuestionVoteFunction();

--A user cannot vote his own answer
DROP TRIGGER IF EXISTS userAnswerVote ON voteAnswer;
DROP FUNCTION IF EXISTS userAnswerVoteFunction();
CREATE FUNCTION userAnswerVoteFunction() RETURNS TRIGGER AS $$
DECLARE
    answer_owner integer;
BEGIN
    SELECT user_post INTO answer_owner FROM answer WHERE NEW.id_answer=answer.id_answer;
    IF (NEW.username = answer_owner) THEN
        RAISE EXCEPTION 'A user (%) cannot vote on his own answer (%)',NEW.username,answer_owner;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER userAnswerVote
BEFORE INSERT OR UPDATE ON voteAnswer
FOR EACH ROW
EXECUTE PROCEDURE userAnswerVoteFunction();

--Update user rank when user is modified
DROP TRIGGER IF EXISTS updateUserRank ON "user";
DROP FUNCTION IF EXISTS updateUserRankFunction();
CREATE FUNCTION updateUserRankFunction() RETURNS TRIGGER AS $$
DECLARE
    minV integer;
    maxV integer;
BEGIN
    SELECT minValue,maxValue Into minV,maxV FROM rank WHERE NEW.id_rank = rank.id_rank;
    IF (NEW.points < minV OR NEW.points > maxV) THEN
        SELECT id_rank INTO NEW.id_rank FROM rank WHERE NEW.points >= rank.minValue AND rank.maxValue > NEW.points;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER updateUserRank
BEFORE UPDATE ON "user"
FOR EACH ROW
EXECUTE PROCEDURE updateUserRankFunction();



--Update user score when a question is modified
DROP TRIGGER IF EXISTS updateScoreQuestion ON question;
DROP FUNCTION IF EXISTS updateScoreQuestionFunction();
CREATE FUNCTION updateScoreQuestionFunction() RETURNS TRIGGER AS $$
DECLARE
    adicionar integer;
BEGIN
    adicionar =  NEW.votes - OLD.votes;
    UPDATE "user" SET points=points+adicionar WHERE NEW.id_user = "user".id_user;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER updateScoreQuestion
AFTER UPDATE ON question
FOR EACH ROW
EXECUTE PROCEDURE updateScoreQuestionFunction();

--Update user score when a answer is modified
DROP TRIGGER IF EXISTS updateScoreAnswer ON answer;
DROP FUNCTION IF EXISTS updateScoreAnswerFunction();
CREATE FUNCTION updateScoreAnswerFunction() RETURNS TRIGGER AS $$
DECLARE
    adicionar integer;
BEGIN
    adicionar =  NEW.votes - OLD.votes;
    UPDATE "user" SET points=points+adicionar WHERE NEW.user_post = "user".id_user;
    RETURN NULL;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER updateScoreAnswer
AFTER UPDATE ON answer
FOR EACH ROW
EXECUTE PROCEDURE updateScoreAnswerFunction();


--Update user score when a bestanswer e created
DROP TRIGGER IF EXISTS updateScoreBestAnswer ON bestAnswer;
DROP FUNCTION IF EXISTS updateScoreBestAnswerFunction();
CREATE FUNCTION updateScoreBestAnswerFunction() RETURNS TRIGGER AS $$
DECLARE
    user_posted integer;
BEGIN
    SELECT user_post INTO user_posted FROM answer WHERE NEW.id_bestAnswer=answer.id_answer;
    UPDATE "user" SET points=points+3 WHERE user_posted = "user".id_user;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER updateScoreBestAnswer
BEFORE INSERT ON bestAnswer
FOR EACH ROW
EXECUTE PROCEDURE updateScoreBestAnswerFunction();

--A member cannot report his own content (questions, comments and answers)
DROP TRIGGER IF EXISTS reportSelf ON userReport;
DROP FUNCTION IF EXISTS reportSelfFunction();
CREATE FUNCTION reportSelfFunction() RETURNS TRIGGER AS $$
DECLARE
    id_answered integer;
    user_question integer;
    user_answer integer;
BEGIN
    SELECT question.id_user INTO user_question FROM question INNER JOIN report ON (question.id_question=report.id_question) WHERE report.id_report=NEW.id_report;
    SELECT answer.user_post INTO user_answer FROM answer INNER JOIN report ON (answer.id_answer=report.id_answer) WHERE report.id_report=NEW.id_report;
    IF (NEW.username = user_question) THEN
        RAISE EXCEPTION 'A user (%) can not report his own question (%)',NEW.username,user_question;
    END IF;
    IF (NEW.username = user_answer) THEN
        RAISE EXCEPTION 'A user (%) can not report his own answer (%)',NEW.username,user_answer;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER reportSelf
BEFORE INSERT ON userReport
FOR EACH ROW
EXECUTE PROCEDURE reportSelfFunction();


--Pre-calculate FTS
DROP TRIGGER IF EXISTS updateSearch ON question;
DROP FUNCTION IF EXISTS updateSearchFunction();
CREATE FUNCTION updateSearchFunction() RETURNS TRIGGER AS $$
BEGIN
  IF TG_OP = 'INSERT' THEN
    NEW.search = to_tsvector('english', NEW.title);
  END IF;
  IF TG_OP = 'UPDATE' THEN
      IF NEW.title <> OLD.title THEN
        NEW.search = to_tsvector('english', NEW.title);
      END IF;
  END IF;
  RETURN NEW;
END
$$ LANGUAGE 'plpgsql';


CREATE TRIGGER updateSearch
AFTER INSERT OR UPDATE ON question
FOR EACH ROW
EXECUTE PROCEDURE updateSearchFunction();


-- TODO--





