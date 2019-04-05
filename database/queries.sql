---------------QUERIES---------------

-- Obtain a member’s profile information
SELECT username, bioDescription, points, profilePhoto, rankType
FROM "user", rank
Where  "user".id_rank=rank.id_rank; 


-- Obtain a member´s number of followers 
SELECT COUNT (*) as number_of_followers
FROM follow INNER JOIN "user" ON follow.following ="user".id_user;


-- Obtain a member´s number of following
SELECT COUNT (*) as number_of_following
FROM follow INNER JOIN "user" ON follow.followers ="user".id_user;


-- Obtain a member’s most recent questions (limit 10)
SELECT title, description, date
FROM question INNER JOIN "user" ON question.id_user = user.id_user
ORDER BY date DESC
LIMIT 10;


-- Obtain a member’s most recent answers
SELECT text, date
FROM answer INNER JOIN "user" ON answer.user_post = "user".id_user
ORDER BY date DESC
LIMIT 10;


-- Obtain a member’s followers
SELECT username , profilePhoto , points, id_rank 
FROM follow INNER JOIN "user" ON  follow.following = "user".id_user;


-- Obtain a member’s following
SELECT username , profilePhoto , points, id_rank 
FROM follow INNER JOIN "user" ON  follow.followers = "user".id_user;


-- Obtain a member’s notifications
SELECT type, description, "date", view
FROM notification INNER JOIN "user" ON notification.id_user = "user".id_user
ORDER BY "date" DESC;


-- Obtain a question’s details
SELECT "user".username, "user".profilePhoto, question.name, question.description, question.date, question.votes
FROM question INNER JOIN "user" ON question.id_user = "user".id_user;


-- Obtain all the answers to a question
SELECT "user".username, "user".profilePhoto, answer.description, answer.date
FROM answer INNER JOIN question ON answer.id_question = question.id_question 
INNER JOIN "user" ON question.id_user = "user".id_user;


-- Obtain the top users (highest score)
SELECT username, profilePhoto, points
FROM "user"
ORDER BY points DESC
LIMIT 10;


-- Obtain trending category (category with the most questions associated)
SELECT category.name
FROM category INNER JOIN question 
ON category.id_category = question.name
GROUP BY  category.name
ORDER BY count(*) DESC
LIMIT 5;


-- Obtain questions posted in a specific date period
SELECT "user".username, question.title, question.description, question."date"
FROM question INNER JOIN "user"
ON question.id_user = "user".id_user
WHERE question."date" 
BETWEEN $beginning_date AND $end_date;



-- Obtain all the comments to an answer
SELECT id_answer,"text","date",votes,photo,deleted,id_question,user_post
FROM 
(SELECT firstAnswer,secondAnswer AS id_comment
FROM comment
WHERE firstAnswer=$answer)
INNER JOIN answer ON (id_comment=answer.id_answer);


-- Obtain questions matching a search input
SELECT id_question,title
FROM question
WHERE search @@ plainto_tsquery('english',$search)
ORDER BY ts_rank(search,plainto_tsquery('english',$search)) DESC;


--------------UPDATES--------------
 
-- Update user info
UPDATE "user"
SET username = $name, password = $password, photo = $photo,
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
SET votes=votes+$quantidade
WHERE id_question=$id_question;


-- rate an answer/comment
UPDATE  answer
SET votes=votes+$quantidade
WHERE id_answer=$id_answer;


--------------DELETES--------------

-- delete a question
DELETE FROM question WHERE id_question = $id;

-- delete an answer
DELETE FROM answer WHERE id_answer = $id;

-- delete account
DELETE FROM "user" WHERE id_user = $id;

-- delete a comment
DELETE FROM comment WHERE secondAnswer=$id;

-------------ADD INFO--------------

-- add new notification to an user
INSERT INTO notification (id_notification, description, type, view,"date",id_user)
VALUES (DEFAULT,$description, $type,$view, now(),$id_user);


-- add new user
INSERT INTO "user" (id_user,username, password, email, bioDescription, birthdate, profilePhoto) 
VALUES (DEFAULT,$username, $password, $email, $bioDescription, $birthdate, $profilePhoto);


-- add new category
INSERT INTO category(id_category,name,icon)
VALUES(DEFAULT,$name,$icon);


-- add new question
INSERT INTO question(id_question,name, title, description, "date", photo, id_user,search) 
VALUES(DEFAULT,$name, $title, $description, now(), $photo, $id_user,NULL);


-- add new answer
INSERT INTO answer(id_answer,"text","date", photo, id_question, user_post)
VALUES(DEFAULT,$"text",now(), $photo, $id_question, $user_post);

-- add new report

INSERT INTO report(id_report,"date", reason, id_question, id_answer)
VALUES(DEFAULT,now(), $reason, $id_question, $id_answer);

-- add new connection user report

INSERT INTO userReport(username,id_report)
VALUES($username,$id_report);