---------------QUERIES---------------

-- Obtain a member’s profile information
SELECT username, bioDescription, points, profilePhoto, name
FROM "user", rank
Where  "user".id_rank=rank.id_rank AND "user".id_user = $id_user; 


-- Obtain a member´s number of followers 
SELECT COUNT (*) as number_of_followers
FROM follow 
WHERE follow.following = $id_user;


-- Obtain a member’s followers
SELECT id_user,username , profilePhoto , points, id_rank 
FROM follow INNER JOIN "user" ON (follow.follower="user".id_user)
WHERE follow.following = $id_user;


-- Obtain a member´s number of following
SELECT COUNT (*) as number_of_following
FROM follow 
WHERE follow.follower = $id_user;

-- Obtain a member´s name of following
SELECT id_user,username , profilePhoto , points, id_rank 
FROM follow INNER JOIN "user" ON follow.following ="user".id_user
WHERE follow.follower = $id_user;


-- Obtain a member’s most recent questions (limit 10)
SELECT title, description, date
FROM question
ORDER BY date DESC
LIMIT 10;


-- Obtain a member’s most recent answers
SELECT text, date
FROM answer
WHERE answer.user_post = $id_user
ORDER BY date DESC
LIMIT 10;


-- Obtain a member’s notifications
SELECT type, description, "date", view
FROM notification 
WHERE notification.id_user = $id_user
ORDER BY "date" DESC;


-- Obtain a question’s details
SELECT "user".username, "user".profilePhoto, question.title, question.description, question."date", question.votes
FROM question INNER JOIN "user" ON (question.id_user = "user".id_user)
WHERE question.id_question = $id_question;


-- Obtain all the answers to a question
SELECT "user".username, "user".profilePhoto, answer."text", answer.date, answer.votes , answer.photo
FROM (question INNER JOIN answer ON (question.id_question = answer.id_question)) INNER JOIN "user" ON (answer.user_post = "user".id_user)
WHERE question.id_question = $id_question;


-- Obtain the top users (highest score)
SELECT username, profilePhoto, points
FROM "user"
ORDER BY points DESC
LIMIT 10;


-- Obtain trending category (category with the most questions associated)
SELECT name
FROM 
(SELECT category.name AS name, COUNT(id_question) AS quantidade
FROM category INNER JOIN question ON (category.id_category = question.id_category)
WHERE question."date" BETWEEN NOW() - INTERVAL '1 DAY' AND now()
GROUP BY  category.name) AS sub
ORDER BY quantidade DESC
LIMIT 5;


-- Obtain questions posted in a specific date period
SELECT "user".username, question.title, question.description, question."date"
FROM question INNER JOIN "user"
ON question.id_user = "user".id_user
WHERE question."date" BETWEEN $beginning_date AND $end_date AND question.deleted = false;



-- Obtain all the comments to an answer
SELECT id_answer, "text", "date", votes, photo, deleted, id_question, user_post
FROM 
(SELECT firstAnswer,secondAnswer AS id_comment
FROM comment
WHERE firstAnswer = $answer) AS sub
INNER JOIN answer ON (sub.id_comment = answer.id_answer);


-- Obtain questions matching a search input
SELECT id_question, title
FROM question
WHERE search @@ plainto_tsquery('english',$search) AND question.deleted = false
ORDER BY ts_rank(search,plainto_tsquery('english',$search)) DESC
LIMIT 10;


--------------UPDATES--------------
 
-- Update user info
UPDATE "user"
SET username = $name, password = $password,
bioDescription = $bioDescription, profilePhoto = $profilePhoto,
points = $points
WHERE id_user = $id;


-- Update question
UPDATE question
SET title = $title , description = $description, name = $name
WHERE id_question = $id;



-- Update answer/commet
UPDATE answer
SET "text" = $"text", photo = $photo
WHERE id_answer = $id;


-- Mark notification as read
UPDATE notification
SET view = true
WHERE id_notification = $id;


-- rate a question
UPDATE  question
SET votes = votes + $quantidade
WHERE id_question = $id_question;


-- rate an answer/comment
UPDATE answer
SET votes = votes + $quantidade
WHERE id_answer = $id_answer;


--------------DELETES--------------

-- delete a question
UPDATE question
SET deleted = true
WHERE question.id_question = $id_question;

-- delete an answer
UPDATE answer
SET deleted = true
WHERE answer.id_answer = $id_answer;

-- delete account
UPDATE "user"
SET deleted = true
WHERE "user".id_user = $id_user;

-------------ADD INFO--------------

-- add new notification to an user
INSERT INTO notification (id_notification, description, type, view,"date",id_user)
VALUES (DEFAULT,$description, $type,$view, now(),$id_user);


-- add new user
INSERT INTO "user" (id_user,username, password, email, bioDescription, birthdate, profilePhoto,points,id_rank,banned,deleted) 
VALUES (DEFAULT,$username, $password, $email, $bioDescription, $birthdate, $profilePhoto,0,$id_rank,false,false);


-- add new category
INSERT INTO category(id_category,name,icon)
VALUES(DEFAULT,$name,$icon);


-- add new question
INSERT INTO question(id_question, title, description, "date",votes, photo,deleted,id_category, id_user,search) 
VALUES(DEFAULT, $title, $description, now(),0, $photo,false,$id_category, $id_user,NULL);


-- add new answer
INSERT INTO answer(id_answer,"text","date",votes, photo,deleted, id_question, user_post)
VALUES(DEFAULT,$"text",now(),0, $photo,false, $id_question, $user_post);

-- add new report

INSERT INTO report(id_report,"date", reason, id_question, id_answer)
VALUES(DEFAULT,now(), $reason, $id_question, $id_answer);

-- add new connection user report

INSERT INTO userReport(username,id_report)
VALUES($username,$id_report);

-- add new connection comment

INSERT INTO userReport(firstAnswer,secondAnswer)
VALUES($firstAnswer,$secondAnswer);

-- add new connection voteAnswer

INSERT INTO userReport(username,id_answer)
VALUES($username,$id_answer);

-- add new connection voteQuestion

INSERT INTO userReport(username,id_question)
VALUES($username,$id_question);