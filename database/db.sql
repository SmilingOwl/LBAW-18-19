
DROP TABLE IF EXISTS user1 CASCADE;
DROP TABLE IF EXISTS user2 CASCADE;
DROP TABLE IF EXISTS user3 CASCADE;
DROP TABLE IF EXISTS follow CASCADE;
DROP TABLE IF EXISTS role CASCADE;
DROP TABLE IF EXISTS rank CASCADE;
DROP TABLE IF EXISTS category CASCADE;
DROP TABLE IF EXISTS question CASCADE;
DROP TABLE IF EXISTS voteQuestion CASCADE;
DROP TABLE IF EXISTS answer CASCADE;
DROP TABLE IF EXISTS voteAnswer CASCADE;
DROP TABLE IF EXISTS comment CASCADE;
DROP TABLE IF EXISTS bestAnswer2 CASCADE;
DROP TABLE IF EXISTS bestAnswer1 CASCADE;
DROP TABLE IF EXISTS faq CASCADE;
DROP TABLE IF EXISTS report CASCADE;
DROP TABLE IF EXISTS userReport CASCADE;
DROP TABLE IF EXISTS notification CASCADE;
DROP TYPE IF EXISTS notificationType;
DROP TYPE IF EXISTS rankType;
DROP TYPE IF EXISTS roleType;
DROP FUNCTION IF EXISTS defaultphoto();
DROP FUNCTION IF EXISTS categoriequestionDate(id_category integer);
DROP FUNCTION IF EXISTS answerDate(id_answer integer);
DROP FUNCTION IF EXISTS reportQuestionDate(id_question integer,data date);
DROP FUNCTION IF EXISTS reportAnswerDate(id_answer integer,data date);


--Types--

CREATE TYPE notificationType AS ENUM ('question', 'answer', 'comment', 'follow', 'vote');
CREATE TYPE rankType AS ENUM ('rookie', 'beginner', 'intermediate', 'enthusiastic', 'advanced', 'veteran');
CREATE TYPE roleType AS ENUM ('member','moderator', 'administrator');


--Functions --

CREATE FUNCTION defaultphoto() RETURNS text AS $$
BEGIN
    RETURN 'defaultPhoto.png';
END;
$$ LANGUAGE plpgsql;


CREATE FUNCTION categoriequestionDate(id_category integer) RETURNS date AS $$
BEGIN
    RETURN (select "date" From question where $1 = question.id_question);
END;
$$ LANGUAGE plpgsql;


CREATE FUNCTION answerDate(id_answer integer) RETURNS date AS $$
BEGIN
    RETURN (select "date" From answer where $1 = answer.id_answer);
END;
$$ LANGUAGE plpgsql;


CREATE FUNCTION reportQuestionDate(id_question integer,data date) RETURNS boolean AS $$
BEGIN
    IF id_question IS NULL THEN RETURN false;
    ELSE 
        RETURN (select "date" From question where $1 = question.id_question)<data;
    END IF;
END;
$$ LANGUAGE plpgsql;


CREATE FUNCTION reportAnswerDate(id_answer integer,data date) RETURNS boolean AS $$
BEGIN
    IF id_answer IS NULL THEN RETURN false;
    ELSE RETURN (select "date" From answer where $1 = answer.id_answer)<data;
    END IF;
END;
$$ LANGUAGE plpgsql;



--Tables--

CREATE TABLE rank (
    id_rank SERIAL PRIMARY KEY,
    name rankType NOT NULL DEFAULT 'rookie' CONSTRAINT name_uk UNIQUE,
    minValue integer CONSTRAINT minValue_ck CHECK (minValue>=0),
    maxValue integer CONSTRAINT maxValue_ck CHECK ((maxValue > 0) AND (maxValue>minValue))
);

CREATE TABLE user2 (
    id_user SERIAL PRIMARY KEY,
    points integer NOT NULL CONSTRAINT points_ck CHECK (points >= 0),
    id_rank integer NOT NULL REFERENCES rank (id_rank)
);

CREATE TABLE user3 (
    id_user SERIAL PRIMARY KEY ,
    banned boolean NOT NULL,
    deleted boolean NOT NULL
);

CREATE TABLE user1 (
    id_user SERIAL PRIMARY KEY,
    username text NOT NULL CONSTRAINT username_uk UNIQUE,
    password text NOT NULL,
    email text NOT NULL,
    bioDescription text,
    birthdate date NOT NULL,
    profilePhoto text DEFAULT defaultPhoto(),
    id_user2 integer NOT NULL REFERENCES user2 (id_user) ON UPDATE CASCADE ON DELETE CASCADE,
    id_user3 integer NOT NULL REFERENCES user3 (id_user) ON UPDATE CASCADE ON DELETE CASCADE,
    id_role integer NOT NULL
);

CREATE TABLE follow (
    follower integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    following integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    PRIMARY KEY(follower,following)
);

CREATE TABLE role  (
    id_role SERIAL PRIMARY KEY,
    type roleType NOT NULL DEFAULT 'member',
    beginningDate date,
    endDate date CONSTRAINT endDateBigger_ck CHECK (endDate > beginningDate)
);


CREATE TABLE notification (
    id_notification SERIAL PRIMARY KEY,
    description text NOT NULL,
    type notificationType NOT NULL,
    view boolean NOT NULL,
    "date" date NOT NULL,
    id_user integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE
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
    "date" date NOT NULL DEFAULT now(),
    votes integer NOT NULL DEFAULT 0,
    photo text,
    deleted boolean NOT NULL,
    id_user integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE
);

CREATE TABLE voteQuestion(
    username integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    id_question integer NOT NULL REFERENCES question (id_question) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_question)
);

CREATE TABLE answer(
    id_answer SERIAL PRIMARY KEY,
    "text" text NOT NULL,
    "date" date NOT NULL DEFAULT now() CONSTRAINT date_ck CHECK (categoriequestionDate(id_answer) < "date"),
    votes integer NOT NULL DEFAULT 0,
    photo text,
    deleted boolean NOT NULL,
    id_question integer NOT NULL REFERENCES question (id_question),
    user_post integer NOT NULL REFERENCES user1 (id_user)
);

CREATE TABLE voteAnswer(
    username integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    id_answer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_answer)
);

CREATE TABLE comment(
    firstAnswer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    secondAnswer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    PRIMARY KEY (firstAnswer,secondAnswer)
);

CREATE TABLE bestAnswer2 (
    id_bestAnswer SERIAL PRIMARY KEY ,
    deleted boolean NOT NULL,
    active boolean NOT NULL
);

CREATE TABLE bestAnswer1 (
    id_bestAnswer integer PRIMARY KEY REFERENCES answer (id_answer) ON UPDATE CASCADE ON DELETE CASCADE,
    attributionDate date NOT NULL CONSTRAINT attributionDate_ck CHECK (answerDate(id_bestAnswer) < attributionDate),
    "text" text NOT NULL,
    "date" date NOT NULL DEFAULT now() CONSTRAINT date_ck CHECK (categoriequestionDate(id_bestAnswer) < "date"),
    id_bestAnswer2 integer NOT NULL REFERENCES bestAnswer2 (id_bestAnswer) ON UPDATE CASCADE ON DELETE CASCADE ,
    votes integer NOT NULL DEFAULT 0,
    photo text
);

CREATE TABLE faq(
    id_faq SERIAL PRIMARY KEY,
    question text NOT NULL,
    answer text NOT NULL
);

CREATE TABLE report(
    id_report SERIAL PRIMARY KEY,
    "date" date NOT NULL CONSTRAINT reportDate_ck CHECK (reportQuestionDate(id_question,"date") = true OR reportAnswerDate(id_answer,"date") = false),
    reason text NOT NULL,
    id_question integer REFERENCES question (id_question),
    id_answer integer REFERENCES answer (id_answer)
);

CREATE TABLE userReport(
    username integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    id_report integer NOT NULL REFERENCES report (id_report) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_report)
);

