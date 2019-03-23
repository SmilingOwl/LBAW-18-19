--Types
DROP TYPE IF EXISTS notificationType;
CREATE TYPE notificationType AS ENUM ('question', 'answer', 'comment', 'follow', 'vote');
DROP TYPE IF EXISTS rankType;
CREATE TYPE rankType AS ENUM ('rookie', 'beginner', 'intermediate', 'enthusiastic', 'adanced', 'veteran');
DROP TYPE IF EXISTS roleType;
CREATE TYPE roleType AS ENUM ('member','moderator', 'administrator');

--Functions --

DROP FUNCTION IF EXISTS defaultphoto();
CREATE FUNCTION defaultphoto() RETURNS text AS $$
BEGIN
    RETURN 'defaultPhoto.png';
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS categoriequestionDate();
CREATE FUNCTION categoriequestionDate(id_category integer) RETURNS date AS $$
BEGIN
    RETURN (select "date" From question where $1 = question.id_question);
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS answerDate();
CREATE FUNCTION answerDate(id_answer integer) RETURNS date AS $$
BEGIN
    RETURN (select "date" From answer where $1 = answer.id_answer);
END;
$$ LANGUAGE plpgsql;

--Tables

DROP TABLE IF EXISTS user2;
CREATE TABLE user2 (
    points integer PRIMARY KEY,
    id_rank integer NOT NULL
);

DROP TABLE IF EXISTS user3;
CREATE TABLE user3 (
    banned boolean PRIMARY KEY,
    deleted boolean NOT NULL
);

DROP TABLE IF EXISTS user1;
CREATE TABLE user1 (
    id_user SERIAL PRIMARY KEY,
    username text NOT NULL CONSTRAINT username_uk UNIQUE,
    password text NOT NULL,
    email text NOT NULL,
    bioDescription text,
    birthdate date NOT NULL,
    profilePhoto text DEFAULT defaultPhoto(),
    banned boolean NOT NULL REFERENCES user3 (banned) ON UPDATE CASCADE ON DELETE CASCADE,
    points integer NOT NULL CONSTRAINT points_ck CHECK (points >= 0) REFERENCES user2 (points) ON UPDATE CASCADE ON DELETE CASCADE,
    id_role integer NOT NULL
);

DROP TABLE IF EXISTS follow;
CREATE TABLE follow (
    follower integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    following integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    PRIMARY KEY(follower,following)
);

DROP TABLE IF EXISTS role;
CREATE TABLE role  (
    id_role SERIAL PRIMARY KEY,
    type roleType NOT NULL DEFAULT 'member',
    beginningDate date,
    endDate date CONSTRAINT endDateBigger_ck CHECK (endDate > beginningDate)
);

DROP TABLE IF EXISTS rank;
CREATE TABLE rank (
    id_rank SERIAL PRIMARY KEY,
    name rankType NOT NULL DEFAULT 'rookie' CONSTRAINT name_uk UNIQUE,
    minValue integer CONSTRAINT minValue_ck CHECK (minValue>=0),
    maxValue integer CONSTRAINT maxValue_ck CHECK ((maxValue > 0) AND (maxValue>minValue))
);

DROP TABLE IF EXISTS notification;
CREATE TABLE notification (
    id_notification SERIAL PRIMARY KEY,
    description text NOT NULL,
    type notificationType NOT NULL,
    view boolean NOT NULL,
    "date" date NOT NULL,
    id_user integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE
);

DROP TABLE IF EXISTS category;
CREATE TABLE category(
    id_category SERIAL PRIMARY KEY,
    name text NOT NULL CONSTRAINT categoryname_uk UNIQUE
);

DROP TABLE IF EXISTS question;
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

DROP TABLE IF EXISTS voteQuestion;
CREATE TABLE voteQuestion(
    username integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    id_question integer NOT NULL REFERENCES question (id_question) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_question)
);

DROP TABLE IF EXISTS answer;
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

DROP TABLE IF EXISTS voteAnswer;
CREATE TABLE voteAnswer(
    username integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    id_answer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_answer)
);

DROP TABLE IF EXISTS comment;
CREATE TABLE comment(
    firstAnswer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    secondAnswer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE,
    PRIMARY KEY (firstAnswer,secondAnswer)
);

DROP TABLE IF EXISTS bestAnswer2;
CREATE TABLE bestAnswer2 (
    deleted boolean PRIMARY KEY,
    active boolean NOT NULL
);

DROP TABLE IF EXISTS bestAnswer1;
CREATE TABLE bestAnswer1 (
    id_bestAnswer integer NOT NULL REFERENCES answer (id_answer) ON UPDATE CASCADE ON DELETE CASCADE,
    attributionDate date NOT NULL CONSTRAINT attributionDate_ck CHECK (answerDate(id_bestAnswer) < attributionDate),
    "text" text NOT NULL,
    "date" date NOT NULL DEFAULT now() CONSTRAINT date_ck CHECK (categoriequestionDate(id_bestAnswer) < "date"),
    votes integer NOT NULL DEFAULT 0,
    photo text,
    deleted boolean NOT NULL REFERENCES bestAnswer2 (deleted) ON UPDATE CASCADE ON DELETE CASCADE 
);



DROP TABLE IF EXISTS faq;
CREATE TABLE faq(
    id_faq SERIAL PRIMARY KEY,
    question text NOT NULL,
    answer text NOT NULL
);

DROP TABLE IF EXISTS report;
CREATE TABLE report(
    id_report SERIAL PRIMARY KEY,
    "date" date NOT NULL , -- Não sei como fazer este check
    reason text NOT NULL,
    id_question integer REFERENCES question (id_question),
    id_answer integer REFERENCES answer (id_answer)
);

DROP TABLE IF EXISTS userReport;
CREATE TABLE userReport(
    username integer NOT NULL REFERENCES user1 (id_user) ON UPDATE CASCADE,
    id_report integer NOT NULL REFERENCES report (id_report) ON UPDATE CASCADE,
    PRIMARY KEY (username,id_report)
);

