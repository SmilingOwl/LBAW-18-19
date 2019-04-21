
-----------------------------------------
-- Drop old schmema
-----------------------------------------

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


-----------------------------------------
--Types
-----------------------------------------

DROP TYPE IF EXISTS notificationType;
CREATE TYPE notificationType AS ENUM ('question', 'answer', 'comment', 'follow', 'vote');

DROP TYPE IF EXISTS rankType;
CREATE TYPE rankType AS ENUM ('rookie', 'beginner', 'intermediate', 'enthusiastic', 'advanced', 'veteran');

DROP TYPE IF EXISTS roleType;
CREATE TYPE roleType AS ENUM ('member','moderator', 'administrator');


-----------------------------------------
--DOMAINS
-----------------------------------------

DROP DOMAIN If EXISTS DateTime CASCADE;
CREATE DOMAIN DateTime AS date 
    CONSTRAINT date_ck CHECK (VALUE > '1900-01-01'::date AND VALUE <=now());


-----------------------------------------
--Functions 
-----------------------------------------

DROP FUNCTION IF EXISTS defaultphoto();
CREATE FUNCTION defaultphoto() RETURNS text AS $$
BEGIN
    RETURN 'defaultPhoto.png';
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS rookieID();
CREATE FUNCTION rookieID() RETURNS integer AS $$
DECLARE
    id integer;
BEGIN
    IF NOT EXISTS (SELECT rank.id_rank FROM rank WHERE rank.name = 'rookie') THEN
        RAISE EXCEPTION 'A default rank rookie does not exist in the database.';
    END IF;
    SELECT rank.id_rank INTO id FROM rank WHERE rank.name = 'rookie';
    RETURN id;
END;
$$ LANGUAGE plpgsql;


-----------------------------------------
--Tables
-----------------------------------------

CREATE TABLE rank(
    id_rank SERIAL PRIMARY KEY,
    name rankType NOT NULL DEFAULT 'rookie' CONSTRAINT name_uk UNIQUE,
    minValue integer CONSTRAINT minValue_ck CHECK (minValue>=0),
    maxValue integer CONSTRAINT maxValue_ck CHECK ((maxValue > 0) AND (maxValue>minValue))
);

CREATE TABLE "user"(
    id_user SERIAL PRIMARY KEY,
    username text NOT NULL CONSTRAINT username_uk UNIQUE,
    password text NOT NULL,
    email text NOT NULL CONSTRAINT email_uk UNIQUE,
    bioDescription text,
    birthdate DateTime NOT NULL,
    profilePhoto text DEFAULT defaultPhoto(),
    points integer NOT NULL,
    id_rank integer NOT NULL DEFAULT rookieID() REFERENCES rank (id_rank) ON UPDATE CASCADE,
    banned boolean NOT NULL,
    deleted boolean NOT NULL,
    remember_token text
);

CREATE TABLE role(
    id_role SERIAL PRIMARY KEY,
    type roleType NOT NULL DEFAULT 'member',
    beginningDate DateTime,
    endDate DateTime CONSTRAINT endDateBigger_ck CHECK (endDate > beginningDate),
    id_user integer REFERENCES "user" (id_user) ON UPDATE CASCADE
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
    name text NOT NULL CONSTRAINT categoryname_uk UNIQUE,
    icon text NOT NULL CONSTRAINT catIcon_uk UNIQUE
);

CREATE TABLE question(
    id_question SERIAL PRIMARY KEY,
    title text NOT NULL,
    description text,
    "date" DateTime NOT NULL DEFAULT now(),
    votes integer NOT NULL DEFAULT 0,
    photo text,
    deleted boolean NOT NULL,
    id_category integer NOT NULL REFERENCES category (id_category) ON UPDATE CASCADE,
    id_user integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE,
    search tsvector
);

CREATE TABLE voteQuestion(
    username integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE,
    id_question integer NOT NULL REFERENCES question (id_question) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_question)
);

CREATE TABLE answer(
    id_answer SERIAL PRIMARY KEY,
    "text" text NOT NULL,
    "date" DateTime NOT NULL DEFAULT now(),
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
    secondAnswer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE ON DELETE CASCADE,
    PRIMARY KEY (firstAnswer,secondAnswer)
);

CREATE TABLE bestAnswer(
    id_bestAnswer integer PRIMARY KEY REFERENCES answer (id_answer) ON UPDATE CASCADE ON DELETE CASCADE,
    attributionDate DateTime NOT NULL,
    "text" text NOT NULL,
    "date" DateTime NOT NULL DEFAULT now(),
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
    "date" DateTime NOT NULL,
    reason text NOT NULL,
    id_question integer REFERENCES question (id_question),
    id_answer integer REFERENCES answer (id_answer)
);

CREATE TABLE userReport(
    username integer NOT NULL REFERENCES "user" (id_user) ON UPDATE CASCADE,
    id_report integer NOT NULL REFERENCES report (id_report) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_report)
);
