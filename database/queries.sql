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

-- Obtain a member’s following

-- Obtain a member’s notifications
SELECT type, description, date, view
FROM notification INNER JOIN "user" ON notification.id_user = "user".id_user
ORDER BY date DESC;


-- Obtain a question’s details
SELECT "user".username, "user".profile_picture, question.name, question.description, question.date, question.votes
FROM question INNER JOIN "user" ON question.id_user = "user".id_user;


-- Obtain all the answers to a question
SELECT "user".username, "user".profile_picture, answer.description, answer.date
FROM answer INNER JOIN question ON answer.id_question = question.id_question INNER JOIN "user" ON question.id_user = "user".id_user;

-- Obtain all the comments to an answer


-- Obtain questions matching a search input

-- Obtain the top users (highest score)
SELECT username, profile_picture, points
FROM "user"
ORDER BY points DESC
LIMIT 10;

-- Obtain trending category (category with the most questions associated)

-- Obtain questions posted in a specific date period


--------------UPDATES--------------
 
-- Update user info

-- Update question

-- Update answer

-- Update comment

-- Mark notification as read

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