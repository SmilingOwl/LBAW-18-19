--TRIGGERS--

DROP TRIGGER IF EXISTS report_association ON report;
DROP FUNCTION IF EXISTS report_asso();
CREATE FUNCTION report_asso() RETURNS TRIGGER AS $$
BEGIN
    IF NOT EXISTS ((SELECT NEW.id_question FROM report) UNION ALL (SELECT NEW.id_answer FROM id_answer)) THEN
        RAISE EXCEPTION 'A report most be associated only to one answer or report.';
    END IF;
    IF EXISTS ((SELECT NEW.id_question FROM report) UNION ALL (SELECT NEW.id_answer FROM id_answer)) THEN
        RAISE EXCEPTION 'A report most be associated only to one answer or report.';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER report_association 
BEFORE INSERT OR UPDATE ON report
FOR EACH ROW 
EXECUTE PROCEDURE report_asso();


DROP TRIGGER IF EXISTS answerDate ON answer;
DROP FUNCTION IF EXISTS answerDateCheck();
CREATE FUNCTION answerDateCheck() RETURNS TRIGGER AS $$
DECLARE
    question_date DateTime;
BEGIN
    SELECT "date" INTO question_date FROM question WHERE question.id_question = NEW.id_question;
    IF (question_data >= NEW."date") THEN
        RAISE EXCEPTION 'An answer post date must be bigger than the question post date';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER answerDate
BEFORE INSERT OR UPDATE on answer
FOR EACH ROW
EXECUTE PROCEDURE answerDateCheck();

DROP TRIGGER IF EXISTS bestAnswerDate ON bestAnswer;
DROP FUNCTION IF EXISTS bestAnswerDateCheck();
CREATE FUNCTION bestAnswerDateCheck() RETURNS TRIGGER AS $$
DECLARE
    question_date DateTime;
    answer_date DateTime;
BEGIN
    SELECT "date" INTO answer_date FROM answer WHERE answer.id_answer = NEW.id_bestAnswer;
    SELECT "date" INTO question_date FROM question WHERE question.id_question = NEW.id_question;
    IF (question_data > answer_date) THEN
        RAISE EXCEPTION 'A best answer post date must be bigger than the question post date';
    END IF;
    IF (answer_date > NEW."date") THEN
        RAISE EXCEPTION 'A best answer post date must be bigger than the answer post date';
    END IF;
    IF (answer_date > NEW.attributionDate) THEN
        RAISE EXCEPTION 'A best answer post attibution date must be bigger than the answer post date';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;


CREATE TRIGGER bestAnswerDate
BEFORE INSERT OR UPDATE ON bestAnswer
FOR EACH ROW
EXECUTE PROCEDURE bestAnswerDateCheck();


DROP TRIGGER IF EXISTS ageCheck ON "user";
DROP FUNCTION IF EXISTS ageCheckFunction();
CREATE FUNCTION ageCheckFunction() RETURNS TRIGGER AS $$
DECLARE
    age integer;
BEGIN
    SELECT (DATE_PART('year', now()) -  DATE_PART('year', NEW.birthdate)) INTO age;
    IF (age<13) THEN
        RAISE EXCEPTION 'A user must be at least 13 years old';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER ageCheck
BEFORE INSERT OR UPDATE ON "user"
FOR EACH ROW
EXECUTE PROCEDURE ageCheckFunction();


DROP TRIGGER IF EXISTS userQuestionVote ON voteQuestion;
DROP FUNCTION IF EXISTS userQuestionVoteFunction();
CREATE FUNCTION userQuestionVoteFunction() RETURNS TRIGGER AS $$
DECLARE
    question_owner integer;
BEGIN
    SELECT id_user INTO question_owner FROM question WHERE NEW.id_question=question.id_question;
    IF (NEW.username = question_owner) THEN
        RAISE EXCEPTION 'A user can not vote on his own question';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER userQuestionVote
BEFORE INSERT OR UPDATE ON voteQuestion
FOR EACH ROW
EXECUTE PROCEDURE userQuestionVoteFunction();


DROP TRIGGER IF EXISTS userAnswerVote ON voteAnswer;
DROP FUNCTION IF EXISTS userAnswerVoteFunction();
CREATE FUNCTION userAnswerVoteFunction() RETURNS TRIGGER AS $$
DECLARE
    answer_owner integer;
BEGIN
    SELECT id_user INTO answer_owner FROM answer WHERE NEW.id_answer=answer.id_answer;
    IF (NEW.username = answer_owner) THEN
        RAISE EXCEPTION 'A user can not vote on his own answer';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER userAnswerVote
BEFORE INSERT OR UPDATE ON voteAnswer
FOR EACH ROW
EXECUTE PROCEDURE userAnswerVoteFunction();


DROP TRIGGER IF EXISTS updateUserRank ON "user";
DROP FUNCTION IF EXISTS updateUserRankFunction();
CREATE FUNCTION updateUserRankFunction() RETURNS TRIGGER AS $$
DECLARE
    minV integer;
    maxV integer;
BEGIN
    SELECT minValue,maxValue Into minV,maxV FROM rank WHERE NEW.id_rank = rank.id_rank;
    IF (NEW.points < minValue OR NEW.points > maxValue) THEN
        SELECT id_rank INTO NEW.id_rank FROM rank WHERE NEW.points >= rank.minValue AND rank.maxValue > NEW.points;
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER updateUserRank
BEFORE UPDATE ON "user"
FOR EACH ROW
EXECUTE PROCEDURE updateUserRankFunction();



--A member’s score is updated when there is activity on his content (upvotes)
--A member’s score is updated when there is activity from his account (new questions and/or answers).
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
        RAISE EXCEPTION 'A user can not report his own question';
    END IF;
    IF (NEW.username = user_answer) THEN
        RAISE EXCEPTION 'A user can not report his own answer';
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER reportSelf
BEFORE INSERT ON userReport
FOR EACH ROW
EXECUTE PROCEDURE reportSelfFunction();

-- TODO--





