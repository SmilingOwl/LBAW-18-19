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

-- Obtain a member’s most recent answers

-- Obtain a member’s followers

-- Obtain a member’s following

-- Obtain a member’s notifications

-- Obtain a question’s details

-- Obtain all the answers to a question

-- Obtain all the comments to an answer

-- Obtain questions matching a search input

-- Obtain the top users (highest score)

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