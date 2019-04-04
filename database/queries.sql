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
FROM answer INNER JOIN question ON answer.id_question = question.id_question INNER JOIN "user" ON question.id_user = "user".id_user;


-- Obtain the top users (highest score)
SELECT username, profilePhoto, points
FROM "user"
ORDER BY points DESC
LIMIT 10;


-- Obtain all the comments to an answer

-- Obtain questions matching a search input

-- Obtain trending category (category with the most questions associated)

-- Obtain questions posted in a specific date period


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

-- Update comment

-- rate a question

-- rate an answer

-- rate a comment


--------------DELETES--------------

-- delete a question

-- delete an answer

-- delete a comment

-- delete account


-------------ADD INFO--------------

-- add new notification to an user

-- add new user

-- add new category

-- add new question

-- add new answer

-- report