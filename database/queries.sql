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


/*TODO*/
-- Obtain all the comments to an answer


-- Obtain questions matching a search input


--------------UPDATES--------------
 
-- Update user info
UPDATE "user"
SET username = $name, password = $password, photo = $photo,
bioDescription = $bioDescription, profilePhoto = $profilePhoto,
points = $points;


-- Update question
UPDATE question
SET title = $title , description = $description, name = $name;


-- Update answer
UPDATE answer
SET "text" = $"text", photo = $photo;


-- Mark notification as read
UPDATE notification
SET view = true;


/*TODO*/
-- Update comment


-- rate a question


-- rate an answer


-- rate a comment


--------------DELETES--------------

-- delete a question
DELETE FROM question WHERE id = $id;

-- delete an answer
DELETE FROM answer WHERE id = $id;

-- delete a comment
DELETE FROM comment WHERE id = $id;

-- delete account
DELETE FROM "user" WHERE id = $id;


-------------ADD INFO--------------

-- add new notification to an user
INSERT INTO notification (type, date, content, member_id)
VALUES ($type, $date,$content, $member_id);


-- add new user
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto) 
VALUES ($username, $password, $email, $bioDescription, $birthdate, $profilePhoto);


-- add new category
INSERT INTO category(name)
VALUES($name);


-- add new question
INSERT INTO question(name, title, description, date, photo, id_user) 
VALUES($name, $title, $description, $date, $photo, $id_user);


-- add new answer
INSERT INTO answer("text","date", photo, id_question, user_post)
VALUES($"text",$"date", $photo, $id_question, $user_post);

/*TODO*/
-- report
