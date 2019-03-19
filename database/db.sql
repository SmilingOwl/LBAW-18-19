--Types
CREATE TYPE notificationType AS ENUM ('question', 'answer', 'comment', 'follow', 'vote');
CREATE TYPE rankType AS ENUM ('rookie', 'beginner', 'intermediate', 'enthusiastic', 'adanced', 'veteran');
CREATE TYPE roleType AS ENUM ('member','moderator', 'administrator');

--Tables
CREATE Rank TABLE (

);

CREATE Role TABLE (

);

CREATE User TABLE (

);

CREATE Notification TABLE (

);

CREATE Report TABLE(

);

CREATE Question TABLE(

);

CREATE Answer TABLE(

);

CREATE FAQ TABLE(

);

CREATE BestAnswer TABLE(

);
