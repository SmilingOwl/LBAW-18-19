
DROP TABLE IF EXISTS "user" CASCADE;
DROP TABLE IF EXISTS follow CASCADE;
DROP TABLE IF EXISTS role CASCADE;
DROP TABLE IF EXISTS rank CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS question CASCADE;
DROP TABLE IF EXISTS voteQuestion CASCADE;
DROP TABLE IF EXISTS answer CASCADE;
DROP TABLE IF EXISTS voteAnswer CASCADE;
DROP TABLE IF EXISTS comment CASCADE;
DROP TABLE IF EXISTS bestAnswer CASCADE;
DROP TABLE IF EXISTS faq CASCADE;
DROP TABLE IF EXISTS report CASCADE;
DROP TABLE IF EXISTS userReport CASCADE;
DROP TABLE IF EXISTS notification CASCADE;

--Types--

DROP TYPE IF EXISTS notificationType;
CREATE TYPE notificationType AS ENUM ('question', 'answer', 'comment', 'follow', 'vote');
DROP TYPE IF EXISTS rankType;
CREATE TYPE rankType AS ENUM ('rookie', 'beginner', 'intermediate', 'enthusiastic', 'advanced', 'veteran');
DROP TYPE IF EXISTS roleType;
CREATE TYPE roleType AS ENUM ('member','moderator', 'administrator');

--Functions --

DROP FUNCTION IF EXISTS defaultphoto();
CREATE FUNCTION defaultphoto() RETURNS text AS $$
BEGIN
    RETURN 'defaultPhoto.png';
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS categoriequestionDate(id_category integer);
CREATE FUNCTION categoriequestionDate(id_category integer) RETURNS date AS $$
BEGIN
    RETURN (select "date" From question where id_category = question.id_question);
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS answerDate(id_answer integer);
CREATE FUNCTION answerDate(id_answer integer) RETURNS date AS $$
BEGIN
    RETURN (select "date" From answer where id_answer = answer.id_answer);
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS reportQuestionDate(id_question integer,data date);
CREATE FUNCTION reportQuestionDate(id_question integer,data date) RETURNS boolean AS $$
BEGIN
    IF id_question IS NULL THEN RETURN false;
    ELSE 
        RETURN (select "date" From question where id_question = question.id_question)<data;
    END IF;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS reportAnswerDate(id_answer integer,data date);
CREATE FUNCTION reportAnswerDate(id_answer integer,data date) RETURNS boolean AS $$
BEGIN
    IF id_answer IS NULL THEN RETURN false;
    ELSE RETURN (select "date" From answer where id_answer = answer.id_answer)<data;
    END IF;
END;
$$ LANGUAGE plpgsql;


DROP FUNCTION IF EXISTS rookieID();
CREATE FUNCTION rookieID() RETURNS integer AS $$
DECLARE
    id integer;
BEGIN
    SELECT rank.id_rank INTO id FROM rank WHERE rank.name = 'rookie';
    IF NOT EXISTS id THEN
        RAISE EXCEPTION 'A default rank rookie does not exist in the database.';
    END IF;
    RETURN id;
END;
$$ LANGUAGE plpgsql;

-- DOMAINS--

DROP DOMAIN If EXISTS DateTime;
CREATE DOMAIN DateTime AS date 
    CONSTRAINT date_ck CHECK (VALUE > '1900-01-01'::date AND VALUE <=now());


--Tables--


CREATE TABLE role  (
    id_role SERIAL PRIMARY KEY,
    type roleType NOT NULL DEFAULT 'member',
    beginningDate DateTime,
    endDate DateTime CONSTRAINT endDateBigger_ck CHECK (endDate > beginningDate)
);

CREATE TABLE rank (
    id_rank SERIAL PRIMARY KEY,
    name rankType NOT NULL DEFAULT 'rookie' CONSTRAINT name_uk UNIQUE,
    minValue integer CONSTRAINT minValue_ck CHECK (minValue>=0),
    maxValue integer CONSTRAINT maxValue_ck CHECK ((maxValue > 0) AND (maxValue>minValue))
);

CREATE TABLE "user" (
    id_user SERIAL PRIMARY KEY,
    username text NOT NULL CONSTRAINT username_uk UNIQUE,
    password text NOT NULL,
    email text NOT NULL CONSTRAINT email_uk UNIQUE,
    bioDescription text,
    birthdate DateTime NOT NULL,
    profilePhoto text DEFAULT defaultPhoto(),
    points integer NOT NULL CONSTRAINT points_ck CHECK (points >= 0),
    id_rank integer NOT NULL DEFAULT rookieID() REFERENCES rank (id_rank) ON UPDATE CASCADE,
    banned boolean NOT NULL,
    deleted boolean NOT NULL,
    id_role integer NOT NULL REFERENCES role (id_role) ON UPDATE CASCADE
);

CREATE TABLE follow (
    follower integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE,
    following integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE,
    PRIMARY KEY(follower,following)
);

CREATE TABLE notification (
    id_notification SERIAL PRIMARY KEY,
    description text NOT NULL,
    type notificationType NOT NULL,
    view boolean NOT NULL,
    "date" DateTime NOT NULL,
    id_user integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE
);

CREATE TABLE category(
    id_category SERIAL PRIMARY KEY,
    name text NOT NULL CONSTRAINT categoryname_uk UNIQUE
);

CREATE TABLE question(
    id_question integer PRIMARY KEY NOT NULL REFERENCES category (id_category) ON UPDATE CASCADE ON DELETE CASCADE,
    name text NOT NULL,
    title text NOT NULL,
    description text,
    "date" DateTime NOT NULL DEFAULT now(),
    votes integer NOT NULL DEFAULT 0,
    photo text,
    deleted boolean NOT NULL,
    id_user integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE
);

CREATE TABLE voteQuestion(
    username integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE,
    id_question integer NOT NULL REFERENCES question (id_question) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_question)
);

CREATE TABLE answer(
    id_answer SERIAL PRIMARY KEY,
    "text" text NOT NULL,
    "date" DateTime NOT NULL DEFAULT now() CONSTRAINT date_ck CHECK (categoriequestionDate(id_answer) < "date"),
    votes integer NOT NULL DEFAULT 0,
    photo text,
    deleted boolean NOT NULL,
    id_question integer NOT NULL REFERENCES question (id_question),
    user_post integer NOT NULL REFERENCES "user" (id_user)
);

CREATE TABLE voteAnswer(
    username integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE,
    id_answer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_answer)
);

CREATE TABLE comment(
    firstAnswer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    secondAnswer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    PRIMARY KEY (firstAnswer,secondAnswer)
);

CREATE TABLE bestAnswer (
    id_bestAnswer integer PRIMARY KEY REFERENCES answer (id_answer) ON UPDATE CASCADE ON DELETE CASCADE,
    attributionDate DateTime NOT NULL CONSTRAINT attributionDate_ck CHECK (answerDate(id_bestAnswer) < attributionDate),
    "text" text NOT NULL,
    "date" DateTime NOT NULL DEFAULT now() CONSTRAINT date_ck CHECK (categoriequestionDate(id_bestAnswer) < "date"),
    deleted boolean NOT NULL,
    active boolean NOT NULL,
    votes integer NOT NULL DEFAULT 0,
    photo text
);

CREATE TABLE faq(
    id_faq SERIAL PRIMARY KEY,
    question text NOT NULL CONSTRAINT question_uk UNIQUE,
    answer text NOT NULL CONSTRAINT answer_uk UNIQUE
);

CREATE TABLE report(
    id_report SERIAL PRIMARY KEY,
    "date" DateTime NOT NULL CONSTRAINT reportDate_ck CHECK (reportQuestionDate(id_question,"date") = true OR reportAnswerDate(id_answer,"date") = true),
    reason text NOT NULL,
    id_question integer REFERENCES question (id_question),
    id_answer integer REFERENCES answer (id_answer)
);

CREATE TABLE userReport(
    username integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE,
    id_report integer NOT NULL REFERENCES report (id_report) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_report)
);


--TRIGGERS--

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

DROP TRIGGER IF EXISTS report_association ON report;
CREATE TRIGGER report_association 
BEFORE INSERT OR UPDATE ON report
FOR EACH ROW 
EXECUTE PROCEDURE report_asso();

