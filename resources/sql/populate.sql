-----------------------------------------
--RANK
-----------------------------------------
INSERT INTO "rank"(name, minValue, maxValue) VALUES('rookie',0, 29);
INSERT INTO "rank"(name, minValue, maxValue) VALUES('beginner', 30, 99);
INSERT INTO "rank"(name, minValue, maxValue) VALUES('intermediate', 100, 249);
INSERT INTO "rank"(name, minValue, maxValue) VALUES('enthusiastic', 250, 499);
INSERT INTO "rank"(name, minValue, maxValue) VALUES('advanced', 500, 999);
INSERT INTO "rank"(name, minValue, maxValue) VALUES('veteran', 1000, 100000);


-----------------------------------------
--USER
-----------------------------------------
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Infectedsea', '$2y$10$mMdnZ2Y8u1pfHXhn3HuoA.fdi/yZdDLO20QKYP8DAPV90QZHB8W5u', 'infectedsea166@gmail.com', 'photography lover', '1980-05-17', 'sophie.jpg', 120,1, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Avocadoroxy', '$2y$10$l8cfUGtlM/J7hoc930FcCO8xKLexFKbIHv8xstrfRGq2FHR2cSGzi', 'avocadoroxy@Hi.com','just learning things..', '1993-02-07', 'yves.jpg', 530,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Pepperliving','$2y$10$0ET0ltEPQY0DnzGo1jXJ5uYUKs9Qk3tyqFIDBVfbEqPc0MkgQbpcq', 'peppernsalt@yahoo.com', 'simplicity is prerequisite for reliability', '1997-03-20', 'yves.jpg', 100,3, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Unlinedminiature', '$2y$10$..s7M/XxEor/hYBD4yFrZuxFo/HX2qdx/EWwunoHH7zpdkDdcWHLu', 'creaturesss12@sapo.com', 'admirer of nature', '2000-08-30', 'yves.jpg', 210,3, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Activisthaiku', '$2y$10$8PkFcJvkyqTXqjhZ9mY1leeMu5jzsakMq7zYnxKZAcwBi.ebbbTly', 'activist178@gmail.com', 'getting smarter', '1998-02-17', 'yves.jpg', 300,4, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Flycommon','$2y$10$IoWPVsH/bDedm/WeCN8.e.LRqNh2dpH9Y1qVG5F1/2sX.RISi4I2C', 'flyingbird@io.org', null, '1975-02-17','defaultPhoto.png', 330,4, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Moonshadows', '$2y$10$MNhkvLoQNVFmUSYR4ZTaNuc3et2dpPmXsUbCyxbFGWsvsZYBS3h.i','moonlight@mimi.com', 'engineering master', '1965-02-17', 'yves.jpg', 30,1, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Chessbeans', '$2y$10$8TG5GIMBdnHE7DtmhoE0nujuQtTJLN6Grp10x6P02DACB8RUBTyIG', 'chessLover@beans.com', 'quantum physicist', '2000-02-17','yves.jpg', 209,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Luminous','$2y$10$11LFFYDG8Xtu8J1Z8C8ybuWLU63.SL.XlVvCP1Ooa2iRWjPmhJ9Ne', 'lumi123@gamil.com', null, '1957-02-17','defaultPhoto.png', 205,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Pizzazz','$2y$10$cyL5KoUHSLdbUibmHXBMDe0kY5aC7bNaCglgM8q3W1Wgm3nZeDI/m', 'pizzaAndChips@yahoo.com', 'coffee and pizza! ', '1993-02-17', 'yves.jpg', 520,5, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Pantaloons','$2y$10$7JTXs6LV3RW6ID.O3l5CxeS1Ct//6QFD62KgGrW7PMGUv2lm1lF1O', 'sleepingsheep@hotmail.com', 'always tired..', '1999-02-17', 'defaultPhoto.png', 400,5, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Sparky', '$2y$10$cm/VGHnwuFfw9pVr5is9OOx3rr47TJAB80lzL0IzL/s5HFZLYxFIa', 'sparkytube@sapo.com', null, '1996-02-17', 'yves.jpg', 100,2, true, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Cooper', '$2y$10$7iZnvci1BlK7jsjKWb1DUuHdbh/a7TlPOnIhdIJGWU/2mHBYdxnNq', 'doccooper@un02.com', null, '1988-02-17','yves.jpg', 600,6, false, true);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Vikingkong', '$2y$10$biLdp6g9hR65hJ9A./OmN.TPL1klEjukkyItwPeGlqFQWAF1XMaOe', 'vikingargh@hotmail.com', 'we are made by history', '2003-02-17', 'yves.jpg', 50,1, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('FieryBoy', '$2y$10$8SzhCFNzi1Ulz/2/hX4OUODqKwbg/1PiIO3DQDrv.gCKxV4PEoYau', 'fieryboy123@piripiri.com', 'Mathssssssss', '2002-02-17', 'yves.jpg', 320,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('FateTalk', '$2y$10$AxJEq4PIpx4zB4dZBqnUk.fhQ4FgceltqKEESNspkJ3/TV7X8KNZe', 'sadfate98@gmail.com', 'anti-social behaviour is a trait of intelligence in a world full of conformists', '1984-09-17', 'yves.jpg', 500,4, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('LittleRoses','$2y$10$A/VgS2GRCfki5TtLb2rHHe0mwbElel.7PSHAuSLFZ6M44v2PfjX7m', 'blueroses@gmail.com', null, '2000-06-28', 'yves.jpg', 40,1, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('RainbowRecipe','$2y$10$kEZUCZygpXk2XoAbyWMm/OGYe5n4tI98kkENmKKYxlC9MFgWICNS.', 'diamondspot@oreo.org', 'music is life', '1974-02-17', 'defaultPhoto.png', 300,3, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('YoungerDivision','$2y$10$G94PHRQJ3EjQL.hlQshVFOX.ufb054IaVYhD82hZL9GmB/K8FdCve', 'divisionbell@yahoo.com', null, '1981-02-10', 'yves.jpg', 120,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('HappyCat','$2y$10$YWaBx0Qst0a4hgkZe4I4v.2h10OrGEj3bJZYa/lTWmwo0fqSDLhqW', 'catskittens@pic.com', 'looking for inspiration', '2001-12-05', 'yves.jpg', 200,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Triangletopic', '$2y$10$mMdnZ2Y8u1pfHXhn3HuoA.fdi/yZdDLO20QKYP8DAPV90QZHB8W5u', 'jbailie@optonline.net', 'what do you call an eel with a medical degree? a heeler', '1980-05-17', 'yves.jpg', 120,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Heliosphere', '$2y$10$l8cfUGtlM/J7hoc930FcCO8xKLexFKbIHv8xstrfRGq2FHR2cSGzi', 'duchamp@sbcglobal.net','hope to be of assistence', '1993-02-07', 'yves.jpg', 530,4, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Sofia_15','$2y$10$0ET0ltEPQY0DnzGo1jXJ5uYUKs9Qk3tyqFIDBVfbEqPc0MkgQbpcq', 'jcholewa@optonline.net', 'takin care of business', '1997-03-20', 'yves.jpg', 100,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Argon', '$2y$10$..s7M/XxEor/hYBD4yFrZuxFo/HX2qdx/EWwunoHH7zpdkDdcWHLu', 'burniske@aol.com', null, '2000-08-30', 'yves.jpg', 210,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Carbonradio', '$2y$10$8PkFcJvkyqTXqjhZ9mY1leeMu5jzsakMq7zYnxKZAcwBi.ebbbTly', 'luvirini@sbcglobal.net', 'planning to major in seismology', '1998-02-17', 'yves.jpg', 300,3, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Hexapod','$2y$10$IoWPVsH/bDedm/WeCN8.e.LRqNh2dpH9Y1qVG5F1/2sX.RISi4I2C', 'aardwolf@aol.com', null, '1975-02-17','defaultPhoto.png', 330,3, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('EdgeofSoul', '$2y$10$MNhkvLoQNVFmUSYR4ZTaNuc3et2dpPmXsUbCyxbFGWsvsZYBS3h.i','dmbkiwi@att.net', 'design the future!', '1965-02-17', 'defaultPhoto.png', 30,1, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Nero', '$2y$10$8TG5GIMBdnHE7DtmhoE0nujuQtTJLN6Grp10x6P02DACB8RUBTyIG', 'smpeters@hotmail.com', 'high school student', '2001-02-17','yves.jpg', 209,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('GalaxyBear','$2y$10$11LFFYDG8Xtu8J1Z8C8ybuWLU63.SL.XlVvCP1Ooa2iRWjPmhJ9Ne', 'pariscat@aol.com', null, '1957-02-17','yves.jpg', 205,2, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Infinitesimal','$2y$10$cyL5KoUHSLdbUibmHXBMDe0kY5aC7bNaCglgM8q3W1Wgm3nZeDI/m', 'rafasgj@yahoo.com', null, '1993-02-17', 'yves.jpg', 520,4, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Psychmaster','$2y$10$7JTXs6LV3RW6ID.O3l5CxeS1Ct//6QFD62KgGrW7PMGUv2lm1lF1O', 'gallivant@yahoo.com', null, '1999-02-17', 'defaultPhoto.png', 400,4, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Yuan', '$2y$10$7JTXs6LV3RW6ID.O3l5CxeS1Ct//6QFD62KgGrW7PMGUv2lm1lF1O', 'budinger@icloud.com', null, '1996-02-17', 'yves.jpg', 100,2, true, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Glitcher', '$2y$10$7iZnvci1BlK7jsjKWb1DUuHdbh/a7TlPOnIhdIJGWU/2mHBYdxnNq', 'rnelson@comcast.net', 'hunting down malware', '1988-02-17','sophie.jpg', 600,6, false, true);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Ned21', '$2y$10$biLdp6g9hR65hJ9A./OmN.TPL1klEjukkyItwPeGlqFQWAF1XMaOe', 'sarahs@att.net', 'sippin on straight chlorine', '2002-02-17', 'yves.jpg', 50,1, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Modernzoic', '$2y$10$8SzhCFNzi1Ulz/2/hX4OUODqKwbg/1PiIO3DQDrv.gCKxV4PEoYau', 'bflong@gmail.com', 'i love this site!', '2002-02-17', 'yves.jpg', 320,3, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Orbital', '$2y$10$AxJEq4PIpx4zB4dZBqnUk.fhQ4FgceltqKEESNspkJ3/TV7X8KNZe', 'daveed@sbcglobal.net', 'let''s get physical', '1984-09-17', 'yves.jpg', 500,4, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Proton','$2y$10$A/VgS2GRCfki5TtLb2rHHe0mwbElel.7PSHAuSLFZ6M44v2PfjX7m', 'scottlee@panganiban.ph', null, '2005-06-28', 'yves.jpg', 40,1, false, false);
INSERT INTO "user" (username, password, email, bioDescription, birthdate, profilePhoto, points, id_rank, banned, deleted) VALUES ('Ankara','$2y$10$kEZUCZygpXk2XoAbyWMm/OGYe5n4tI98kkENmKKYxlC9MFgWICNS.', 'zodiacrocket@yahoo.com', null, '1974-02-17', 'defaultPhoto.png', 300,2, false, false);


-----------------------------------------
--ROLE
-----------------------------------------
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('administrator', '2000-09-17', null, 1);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('moderator', '1999-12-10', null, 2);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2002-12-10', null, 3);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('moderator', '2010-12-10', null, 4);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-08', null, 5);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-11-10', null, 6);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2011-12-10', null, 7);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('moderator', '2010-12-10', null, 8);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('moderator', '2018-12-15', null, 9);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2013-12-10', null, 10);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2012-12-10', null, 11);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2013-12-10', null, 12);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2016-12-10', null, 13);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2017-12-10', null, 14);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2011-12-10', null, 15);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('moderator', '2010-12-10', null, 16);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2009-12-10', null, 17);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2000-12-10', null, 18);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2001-12-10', null, 19);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2013-12-10', null, 20);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2018-12-10', null, 21);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2018-12-10', null, 22);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2019-01-10', null, 23);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-10', null, 24);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-10', null, 25);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('moderator', '2010-12-10', null, 26);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-10', null, 27);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-10', null, 28);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-10', null, 29);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('moderator', '2010-12-10', null, 30);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-10', null, 31);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-10-10', null, 32);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-05-10', null, 33);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-04-10', null, 34);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-02-10', null, 35);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('moderator', '2003-12-10', null, 36);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-10', null, 37);
INSERT INTO "role"(type, beginningDate, endDate, id_user) VALUES('member', '2010-12-10', null, 38);

-----------------------------------------
--FOLLOW
-----------------------------------------
INSERT INTO "follow"(following, follower) VALUES(1,2);
INSERT INTO "follow"(following, follower) VALUES(2,1);
INSERT INTO "follow"(following, follower) VALUES(3,9);
INSERT INTO "follow"(following, follower) VALUES(3,29);
INSERT INTO "follow"(following, follower) VALUES(3,34);
INSERT INTO "follow"(following, follower) VALUES(4,3);
INSERT INTO "follow"(following, follower) VALUES(4,7);
INSERT INTO "follow"(following, follower) VALUES(5,12);
INSERT INTO "follow"(following, follower) VALUES(5,14);
INSERT INTO "follow"(following, follower) VALUES(5,20);
INSERT INTO "follow"(following, follower) VALUES(5,22);
INSERT INTO "follow"(following, follower) VALUES(7,1);
INSERT INTO "follow"(following, follower) VALUES(7,4);
INSERT INTO "follow"(following, follower) VALUES(7,5);
INSERT INTO "follow"(following, follower) VALUES(7,8);
INSERT INTO "follow"(following, follower) VALUES(7,13);
INSERT INTO "follow"(following, follower) VALUES(10,3);
INSERT INTO "follow"(following, follower) VALUES(10,19);
INSERT INTO "follow"(following, follower) VALUES(11,14);
INSERT INTO "follow"(following, follower) VALUES(11,25);
INSERT INTO "follow"(following, follower) VALUES(11,35);
INSERT INTO "follow"(following, follower) VALUES(12,5);
INSERT INTO "follow"(following, follower) VALUES(13,4);
INSERT INTO "follow"(following, follower) VALUES(13,8);
INSERT INTO "follow"(following, follower) VALUES(13,16);
INSERT INTO "follow"(following, follower) VALUES(14,5);
INSERT INTO "follow"(following, follower) VALUES(14,6);
INSERT INTO "follow"(following, follower) VALUES(15,4);
INSERT INTO "follow"(following, follower) VALUES(15,7);
INSERT INTO "follow"(following, follower) VALUES(15,8);
INSERT INTO "follow"(following, follower) VALUES(15,13);
INSERT INTO "follow"(following, follower) VALUES(15,30);
INSERT INTO "follow"(following, follower) VALUES(18,11);
INSERT INTO "follow"(following, follower) VALUES(20,5);
INSERT INTO "follow"(following, follower) VALUES(20,14);
INSERT INTO "follow"(following, follower) VALUES(20,25);
INSERT INTO "follow"(following, follower) VALUES(21,17);
INSERT INTO "follow"(following, follower) VALUES(21,38);
INSERT INTO "follow"(following, follower) VALUES(23,6);
INSERT INTO "follow"(following, follower) VALUES(24,2);
INSERT INTO "follow"(following, follower) VALUES(24,27);
INSERT INTO "follow"(following, follower) VALUES(25,14);
INSERT INTO "follow"(following, follower) VALUES(26,7);
INSERT INTO "follow"(following, follower) VALUES(26,13);
INSERT INTO "follow"(following, follower) VALUES(27,24);
INSERT INTO "follow"(following, follower) VALUES(28,4);
INSERT INTO "follow"(following, follower) VALUES(28,6);
INSERT INTO "follow"(following, follower) VALUES(28,8);
INSERT INTO "follow"(following, follower) VALUES(28,9);
INSERT INTO "follow"(following, follower) VALUES(28,12);
INSERT INTO "follow"(following, follower) VALUES(28,25);
INSERT INTO "follow"(following, follower) VALUES(29,11);
INSERT INTO "follow"(following, follower) VALUES(31,19);
INSERT INTO "follow"(following, follower) VALUES(32,22);
INSERT INTO "follow"(following, follower) VALUES(33,1);
INSERT INTO "follow"(following, follower) VALUES(33,7);
INSERT INTO "follow"(following, follower) VALUES(33,26);
INSERT INTO "follow"(following, follower) VALUES(34,3);
INSERT INTO "follow"(following, follower) VALUES(34,9);
INSERT INTO "follow"(following, follower) VALUES(35,11);
INSERT INTO "follow"(following, follower) VALUES(36,8);
INSERT INTO "follow"(following, follower) VALUES(36,13);
INSERT INTO "follow"(following, follower) VALUES(38,10);
INSERT INTO "follow"(following, follower) VALUES(38,17);
INSERT INTO "follow"(following, follower) VALUES(38,19);
INSERT INTO "follow"(following, follower) VALUES(38,21);

-----------------------------------------
--CATEGORY
-----------------------------------------
INSERT INTO "category"(name, icon) VALUES('art', 'art-06.svg');
INSERT INTO "category"(name, icon) VALUES('biology', 'biology-01.svg');
INSERT INTO "category"(name, icon) VALUES('business', 'business-07.svg');
INSERT INTO "category"(name, icon) VALUES('chemistry', 'chemistry-03.svg');
INSERT INTO "category"(name, icon) VALUES('geology', 'geology-10.svg');
INSERT INTO "category"(name, icon) VALUES('history','history-08.svg');
INSERT INTO "category"(name, icon) VALUES('math', 'maths-12.svg');
INSERT INTO "category"(name, icon) VALUES('medicine', 'health-04.svg');
INSERT INTO "category"(name, icon) VALUES('linguistics', 'linguistics-09.svg');
INSERT INTO "category"(name, icon) VALUES('physics', 'physics-02.svg');
INSERT INTO "category"(name, icon) VALUES('psychology', 'psychology-11.svg');
INSERT INTO "category"(name, icon) VALUES('technology', 'tech-05.svg');


-----------------------------------------
--QUESTION
-----------------------------------------
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Tyesha found that the z-statistic was 2.1 and that the critical z-values were -1.96 and 1.96. Which of the following is a valid conclusion based on these results?', 'One can reject the null hypothesis. One can reject the alternate hypothesis. One can accept the null hypothesis. One cannot accept or reject the null hypothesis.','2016-01-06 16:18:36' , 6, null, false,7, 4); 	
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What is required to start sculpting clay (tools, experience…)?', null,'2016-05-06 16:18:36' , 2, null, false,1, 28);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What are the best C++ books?', null,'2016-01-10 16:35:44', 30, null, false,12, 33);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How do I study business law?', null,'2015-09-13 10:14:12', 5, null, false,3, 6);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What CBRNE agent inhibits the enzyme AChE allowing ACh to accumulate affecting the way cells transmit signals to the body?', 'I cannot find anything on my textbooks.', '2015-07-07 06:05:00' , 10, null, false, 8, 21);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Based on the second law of thermodynamics why must a machine always be less than 100% efficient?', 'A.Heat never moves from cold to hot. 
B.Heat is never converted completely into mechanical energy. 
C.Heat never flows from hot to cold. 
D.Entropy never increases.

What''s the right answer?','2016-01-30 15:08:23' , 2, null, false,10, 28);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Is every open circuit a capacitor?', 'I think that even open-ended wires can let AC current flow through them, just with a low capacitance. I also think an antenna could be a capacitor and open ended. Am I thinking correctly?','2016-09-19 19:46:44' , 28, null, false,10, 8);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Melting and boiling points of benzene and fluorobenzene', null ,'2016-06-01 08:44:35', 7, null, false,4, 28);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Why do the five basic questions in the English language (what, why, when, who and where) all start with the letter “w”?', null, '2016-12-19 05:52:53', 15, null, false,9, 31);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What is the opposite of gravitas ?', 'I''m having difficulty coming up with a valid antonym for gravitas.

Online searches return results like superficiality, cheerfulness, frivolity, facetiousness etc. which don''t work for me. They seem to be opposites of gravitas as it is understood by the person who has it.

As in, We need to undertake this project with gravitas, he carried himself with gravitas.

This is taken to mean seriousness.

There''s another sense of the word, as the quality of a person having gravitas. In this case, the things they say and do are given significance because of gravitas.

What if what someone has to say is automatically disregarded because of... the opposite of gravitas.

What would that word be?', '2016-02-17 09:41:14', 28, NULL, false,9, 12);


INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Organic chemistry Iodoform Reaction', 'Why does 2'',6''dimethyl-acetophenone not give iodofom test?', '2015-12-23 02:11:35', 8, 'BvxPv.jpg', false,4, 3);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Is there a good way to store credentials outside of a password manager?', 'A lot of the users in my company are using their agendas to write down their password and usernames, or Excel sheets with a protected password. I''m hesitant to install software for password management after reading recommendations/feedback on them. 
Is there any other secure and user-friendly solution to store passwords?', '2016-01-10 16:35:44', 10, NULL, false,12, 7);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What is the term when two people sing in harmony, but they aren''t singing the same notes?', 'I''m not a musician, and I know basically nothing about music, and music theory and what-not. (I basically just know a few common terms, and how to play chords)

In most songs with two or more people singing, (Duets specifically) the singers almost always sing in harmony, but not the same notes. What term is used to describe this? I want to be able to learn how to do it, but I don''t know the specific term to do more research on it.', '2015-08-05 06:51:24', 7, NULL, false,1, 11);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('In a ball with random thread/strings, how does the density of threads/strings change with radius?', 'A large plastic ball full of holes is given. (So the holes are in a plastic shell.) Straight threads connect these holes randomly, by passing through the interior of the ball/shell.

For a big ball or shell, say a meter in size, with thousands of holes, this makes (1/2 times) thousands of straight threads inside it. (Each hole has the diameter of the thread, so that each hole can only have on string passing through it.)

Now the question: Inside the ball/shell (assumed to be large), is the density of the random threads homogeneous, or does it depend on the radius?', '2016-04-13 08:21:33', 2, NULL, false,10, 8);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Where do the protons in the mitochondrial intermembrane space originally come from?', 
'I''m currently reviewing this concept in cellular respiration. The book which I''m using is Reece, Minorsky, Campbell''s Biology and while it does a good job at explaining the process involved in the electron chain transport. I think it lacks of clearing out my doubts concerning initial protons.

Let me explain, the part where I''m stuck at is, where do originally the protons in the mitochondrial intermembrane space come from?. I understand that there is a proton gradient and the translocation of this protons in the proton pump is key during the electron shuttle process but, how did those initial protons come?. In other words, during the formation of the mitochondria in the cell, have they always been there? or are they part of some bigger molecule and that those protons are detached from them so that there is an initial gradient that triggers the process for the first time?. In other words, how does that initial spark or kick off begins?.

In most animations I''ve found, the explanations take for granted that the protons are freely moving in the intermembrane space such as here and also here but what do those videos lack is the explanation of how (as mentioned above) do those protons got there in the first place.

I''d like somebody could help me to clear out this doubt. I feel that as an addition to the answer, I''d like to know how does the mitochondria forms in the cell?. Since I believe there might be steps involved, I''d appreciate that the answer could explain those steps so I could easily understand, because as mentioned. I''m still confused on that part as well.', '2017-02-11 21:02:44', 3, NULL, false,2, 3);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Is there a foveal explanation for the duck-rabbit illusion?', 
'Myself when I look at the duck-rabbit image, I see a duck if focus on the left (i.e. the beak) or a rabbit if I focus on the right (the nose).

Is this how it works for most people, i.e. is the foveal shift what drives the change in interpretation? (I obviously meant to ask if there''s an empirical study on this.) 
If so, is the duck-rabbit a part of a wider class of illusions that rely on smaller or larger changes in what''s foveated?', '2016-07-31 07:56:01', 17, 'V2pW9.png', false,11, 19);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('When is A isomorphic to A^3?', 
'This is totally elementary, but I have no idea how to solve it: let A be an abelian group such that A is isomorphic to A^3. is then A isomorphic to A^2? probably no, but how construct a counterexample? 
you can also ask this in other categories as well, for example rings. if you restrict to Boolean rings, the question becomes a topological one which makes you think about fractals: let X be stone space such that X=X+X+X, does it follow that X=X+X (here + means disjoint union)?', 
'2017-01-30 15:08:23', 32, NULL, false,7, 15);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Naming my characters', 
'I''m writing a fantasy novel. The story takes place in England (1900''s) No matter how much I research I''m unable to move forward in naming my characters. 
For example, when we look at all the characters JK Rowling created, their names are so unique and suit to their personalities.

My question is are there any methods to name my characters? Should the naming be based on the period when the story takes place?
Should I first develop their personalities and then name them accordingly? Please explain.', 
'2017-01-22 17:35:44', 0, NULL, false,9, 20);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Can somebody explain “leveraged debt investment positions” and “exposures” in this context for me, please?', 
'The strong bond performance has led to a surge in leveraged debt investment positions that are ultimately funded by the banks interbank exposures and WMPs. But nobody really knows how levered these positions are, who has financed them, and by how much, S&P said. The contagion risks for the financial sector could be high.', '2017-02-16 12:47:38', 14, NULL, false,3, 6);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Why were Madagascar and New Zealand discovered so late?', 
'Considering how exploration over long distances into the unknown has been a part of human nature right at the beginning, it''s surprising that some fairly large places have been discovered relatively recently. 
The island of Madagascar, for example, is large and very close to Africa, yet it was discovered in 500 AD. Even then, it wasn''t by nearby Africans, but by faraway Indonesians. 
New Zealand, which was just as tantalizingly close to Australia, was discovered by Polynesian sailors 800 years later.

So why were these large and incredibly close landmasses discovered so late in the history of human existence? 
What was stopping the settlers from getting there a lot earlier, like before the Common Era?', 
'2017-02-04 12:08:41', 5, NULL, false,6, 14);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Exoplanets geology', 
'Science fiction sometimes plays with the concept of a planet with different geological structure than earth (for instance traveling through liquid water core in Star Wars) yet such imaginations often lack scientific plausibility.

What is scientifically plausible and what is not then? Are there any serious research (or at least data-justified scientific speculation) about geology of exoplanets and how it differs from earth?', 
'2017-01-26 12:33:09', 8, NULL, false,5, 20);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What sets the length scale of stratified rock formations?', 
'Driving through areas of the American Southwest such as Utah and Arizona, you notice stratified rock formations everywhere. The grand canyon is the best known example. 
One striking thing is that the thickness (or height) of individual layers of rock seems to be roughly constant, within an order of magnitude. (Perhaps 20 feet tall? Hard to tell from the road.) 
This is true even for very tall cliffs which have dozens of layers. Does this imply some kind of very long-term periodicity in climate over geologic time scales? 
If so, what is it? If not, why is there a dominant length scale in these features? What sets this scale?', 
'2017-01-22 17:35:44', 4, NULL, false,5, 15);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How does a camera move freely inside a car in a movie scene?', 
'In Children Of Men, there is an uncut scene wherein a camera moves freely inside a car full of people. It starts with a front shot with the camera in the dashboard position facing back towards the passengers, then the camera moves forward through the front seats and towards the back seat area and turns around to face the windshield.

Movement looked seamless with no visible rigs, and no room for a cameraman inside. So how do they do it?', 
'2016-03-26 01:06:54', 16, NULL, false,1, 20);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Electrostatic painting on plastic', 
'I''m attempting to create an electrostatic painting process for small plastic parts. The material is ABS and is about 4 inches by 6 inches by 1 inch high. I''m somewhat familiar with electrostatic painting of metal objects, but I am dismissive, perhaps uneducatedly so, of the necessity of the objects to be metallic.

To help the matter, I will be using a painting system that allows the paint droplets to be extremely small -- an airbrush.

I''m hypothesizing that I can connect the negative side of a high-voltage low-current source to the tip of the airbrush, through which the paint flows, while I connect the positive side of the high-voltage source to the plastic part to be painted and mist the paint over the highly-contoured part as it is attracted to the surface.

Will this work?', 
'2015-11-12 16:50:24', 6, NULL, false,12, 13);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Why does liquid water form when we exhale on a mirror?', 
'In the descriptions below, I always assume external pressure to be constant at 1 atm, the condition where daily observations are made.

1) When I exhale on a mirror, liquid water forms on the mirror. That''s condensation. Obviously, the temperature of mirror must be < 100 °C, so water vapor condensing on mirror makes sense. However, in that case why do we have water vapor in our breath when our body temperature is also < 100 °C in the first place?

2) One reason for (1) may be like ''water vapors in air is in equilibrium with liquid water'', so some water vapors can exist although T < 100 °C. If this is correct, based on this reasoning, then why doesn''t ice exist at T > 0 °C? [p = 1 atm only]

3) If liquid water can evaporate into gas at T < 100 °C, then why doesn''t ice turn into liquid at T < 0 °C? (I never use the term ''melt'' here, just like evaporate≠boil) (both have hydrogen bonds, intermolecular forces should be the same?)

4) When I exhale on a wall, no water droplets form. Why do water droplets form on mirror but not on wall (just an example)? The mirror must have the same temperature as that of the wall, both of them must have achieved thermal equilibrium with their surroundings a long time ago.', 
'2015-10-05 01:36:42', 13, NULL, false,4, 9);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Matrix product and eigen values', 
'Is there any relationship between eigenvalues(or spectrum) of graph Laplacian matrix and the eigenvalues of the product of a real symmetric matrix and the Laplacian matrix?

My problem at hand is as follows :

Let A=L*B.

What is the relationship between spectrum (or eigenvalues) of L with the spectrum of A?

L is Laplacian of an undirected graph, hence real symmetric and singular. B is a real symmetric matrix.

I want to show that if I increase the magnitude of eigenvalues of L, the eigenvalues of A will also increase. However, all I could find was a trace inequality relationship, and inequality doesn''t necessarily lead to any conclusion.', '2017-01-11 14:46:12', 9, NULL, false,7, 7);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What’s the difference between primary and secondary dysmenorrhea?', NULL, '2016-08-05 04:54:05', 9, NULL, false,8, 21);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('If sound is a longitudinal wave, why can we hear it if our ears aren''t aligned with the propagation direction?', 'If sound is a longitudinal wave, why can we hear it if our ears aren''t aligned with the propagation direction?', '2017-01-30 15:08:23', 5, NULL, false,10, 16);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What is the possible diagnosis for symptoms including fever, leucocitosys and abdominal pain', NULL, '2016-02-24 08:03:14', 2, NULL, false,8, 21);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How many liberties can one take with syntax and grammar rules when writing poetry?', NULL, '2016-03-10 22:05:47', 12, NULL, false,9, 15);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How do sillimanite rocks form?', NULL, '2016-10-05 01:36:42', 1, NULL, false,5, 14);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Voltage of sounds of mp3 files', 'What is the maximum voltage for common music files? When playing back on a smartphone, if the volume of the smartphone is set to max, how much voltage does the electric signal of the voltage be sent to the earphones?', '2017-11-05 11:36:42', 4, NULL, false,12, 18);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What abstract painters made the most interesting use of color?', NULL, '2016-07-29 10:57:48', 2, NULL, false,1, 19);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Why did the Ottoman Empire not industrialize like France, Germany or Belgium?', NULL, '2016-07-13 17:29:01', 0, NULL, false,6, 9);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Timeframe in which thoughts are concieved', 'Are thoughts concieved in realtime or are they preprocessed chains ready to be thought or both (depending on the prospective) or am I asking a too generalized question to have any sense?', '2016-02-13 18:45:02', 1, NULL, false,11, 21);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('“enables users to” vs “allows users to” – both correct?', 'I’m editing a colleague who habitually uses phrases like:

The password enables users to log in.

This sounds wrong to me, and I want to suggest alternatives like:

The password allows users to log in.

After some cursory research, I think the problem here is me, not the pattern in question. Are “enables” and “allows” interchangeable, here?', '2017-11-25 12:44:21', 4, NULL, false,9, 26);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Significantly reduced absorption of Ciprofloxacin with concurrently administered Sucralfate is utilized intentionally to treat Colitis?', 
'Many studies proved that concurrent administration of Ciprofloxacin and Sucralfate reduces the maximum concentration of Ciprofloxacin in plasma to approximately 1/10 level.

Like Rifaximin, the unabsorbed Ciprofloxacin is more effective to act directly inside the colon?

Or because of the chelate of Ciprofloxacin-Aluminum (of Sucralfate), the chelated Ciprofloxacin is no more effective?

I''ve tried to find long time but no luck.

If somebody helps me with scientific evidences, it would be highly appreciated!', '2016-05-22 08:09:10', 5, NULL, false,8, 17);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Are photons avoiding destructive angles of diffraction in a single photon at a time experiment?', 
'Are photons avoiding the angles of diffraction where destructive interference would occur if they weren''t alone in a one photon at a time double slit experiment? Is the number of photons detected on the wall equal to the number of photons went through the slits in a single photon at a time experiment?', '2016-05-05 11:25:03', 11, NULL, false,10, 8);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What is the name of this film editing technique?', 
'What is it called when a seemingly short or contiguous conversation/dialogue is spread over a few scenes that take place in different places that are apparently far from each other?
In Snatch (2000), for instance, there is a scene where Jason Statham''s character provides a brief explanation of the term ''coursing'', which is contiguous but it spans over a few scenes at different places.
If you close your eyes and listen to the conversation, you''ll believe that it''s contiguous and happens in less than 25 seconds. But if pay attention to the video you''ll know that it is (logically) not.

Does this technique of filming/editing have a name?', '2016-05-05 11:22:33', 9, NULL, false,1, 2);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How do I rename a LINUX host without needing to reboot for the rename to take effect?', 
'I searched for an answer to this question on serverfault and shockingly could not find it. I know it is possible, but I can''t remember how to fdo it. How do I change a LINUX host''s hostname and get that change to take effect without a reboot?

I am using Ubuntu 16 and Ubuntu 18.

A big feature of Ubuntu is the graphical desktop and graphical system utilities. However, we are running Ubuntu in our production environment so we chose not to use the graphical desktop or utilities in order not to have those features consume resources we need in our production environment.

I know that to rename the host, I edit the files:

/etc/hostname
/etc/hosts

In the /etc/hostname one just replaces the current hostname (soon to be former hostname) with the new hostname.

Ubuntu in the /etc/hosts file has the line:

127.0.1.1 your-hostname your-hostname

It acts as bootstrapping while your host is booting up and establishing itself within your network. Prior to changing the hostname, your-hostname is the current (soon to be former hostname) and as a part of changing your host''s hostname, one replaces that name with the new name.

What I am familiar with is executing the above two steps and then rebooting your host. But plenty of times, like with a production server, one would like to execute that rename, but not reboot one''s host.

How can I change hostname on a host and get that change to take effect without rebooting the host?', '2016-04-15 16:25:08', 12, NULL, false,12, 7);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How is it that taking a break from a problem sometimes allows you to figure out the answer?', 'As a computer programmer, I have noticed an interesting phenomenon: If I am stuck on a particular problem in my work, often if I stop thinking about the problem and do something else, the answer will suddenly come to me.

Is there a name for this phenomenon? How does this work? Has any research been done on this? How is it that taking a break from a problem sometimes allows you to figure out the answer?', '2016-04-03 09:28:17', 28, NULL, false,11, 26);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Why is delta-v is the most useful quantity for planning space travel?', 'Many of the papers I''ve seen on the matter make use of the concept of delta-v. Is there an easy to understand reason why delta-v, the magnitude of the change of the velocity, |v|, is so useful for understanding orbital mechanics and planning travel?

My experience in solving physics problems in mechanics has taught me that energy, linear momentum, or angular momentum are usually the most useful quantities. Delta-v doesn''t seem to be a good proxy for any of these quantities, since it''s not squared like the kinetic energy, but it''s also not a vector like the linear and angular momenta.', '2017-04-25 09:51:26', 4, NULL, false,10, 8);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Is exact Kanji stroke length important?', 'I am currently on a quest to learn how to hand write the 2000 most commonly used Kanji in the Japanese language. This requires lots of memorization, so efficiency is important.

I have come across Kanji that have strokes with little extra tails, created from a slightly extra-long stroke. Or in English, they can be called jumps. Take my image as an example.
When splitting this kanji into three separate parts:

1. the left part has two jumps on the bottom, with the left tail being slightly longer
2. the upper right part has no jumps
3. the lower right part has two jumps on the bottom, of equal length.

Question:

How important are the jumps?

When handwriting Kanji, does it matter if these jumps are of the correct length? Would the Kanji still be understandable without correct jumps? Would natives find it annoying, for example, if I didn''t include the jumps at all?

I am asking because the less little things I have to memorize, the faster I can learn the Kanji.', '2016-04-14 13:09:17', 5, '9r7wF.png', false,9, 12);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Creating high quality animated backgrounds from Illustrator files', 
'I have some artwork in illustrator that I would like to animate and get a gif.

Say I have a background pattern and I want to randomly move the elements inside to get a natural look of particles moving for a website background (should I use a gif for an animated background on a website ?)

The simple way is just to create many backgrounds with different locations of the elements, which takes long time and never look natural.

How would you do that on a mac ? Do I need After Effects ? or other software to make it quickly?', '2016-03-22 08:31:24', 2, NULL, false,1, 27);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What is the use of introduction of term univalent function?', 
'What is the use of defining a new term univalent function although there already existed a definition of bijective, one-to-one functions?', '2016-01-14 07:16:54', 0, NULL, false,7, 30);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Difference between i++ and (i)++ in C', 
'int i = 3;
int j = (i)++;

vs

int i = 3;
int j = i ++;

Is there a difference between how the above two cases are evaluated?

Is the first case equivalent to incrementing an rvalue or is it undefined behaviour?', '2016-07-09 17:51:28', 17, NULL, false,12, 26);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Why don''t the electrons move through the electrolyte (instead of the circuit) in a galvanic cell?', 
'I was learning about galvanic cells and I had a problem understanding why electrons do not travel through the electrolyte solutions themselves, instead preferring to travel through metals. Can electrons travel through an electrolytic solution?

Imagine a galvanic cell, without the wiring between the two electrodes and instead we only have the salt bridge. Won''t the electrons (although it is very unfavorable to happen) travel through the salt bridge and the solutions? In other terms will the transformation of the electrodes occur?', '2016-04-02 18:57:46', 28, NULL, false,4, 3);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What is the significance of the traveler carrying writing materials in Ivanhoe?', 
'"The Jew`s dress, which appeared to have suffered considerably from the storm, was a plain russet cloak of many folds, covering a dark purple tunic. He had large boots lined with fur, and a belt around his waist, which sustained a small knife, together with a case for writing materials, but no weapon. He wore a high square yellow cap of a peculiar fashion, assigned to his nation to distinguish them from Christians, and which he doffed with great humility at the door of the hall."

Strange but true: this snippet, apparently about a scribe`s tools, has been haunting me rather obsessively lately. I didn''t recall that the bearer was the Jew. I suppose a lender/usurer would want to keep records of his debtors.

Am I missing something else? Was it particularly rare to be able to write, even among certain strata of the upper class?

Why does he say a small knife, but no weapon?

Is Sir Walter Scott''s mention of writing tools here used primarily to distinguish his social class/ his occupation, or perhaps something else?

Am I mistaken in thinking it might have been a little bit odd for a traveler to be carrying a sack full of pens? (which lacking further descriptive language is what most readers will assume...)', '2016-06-08 14:09:57', 10, NULL, false,9, 12);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What exactly is this small puffer fish doing and how did it manage to accomplish such a feat?', 
'I recently saw a video on youtube where it shows a puffer fish making intricate designs in the sand.

The puffer fish made this design on the image.

What exactly is the puffer fish doing and how is it capable of accomplishing such a feat? Is this behavior learnt, or innate?', '2016-08-19 16:41:55', 7, 'yv0Wh.jpg', false,2, 29);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Rayleigh waves generation', 
'Good day,

I do not fully understand the physical mechanism of formation of Rayleigh waves at the free surface. While their derivation is quite clear and obey free-boundary conditions, it is not clear their physical mechanism.

Could you please correct me in my discussion. Incident P-wave can transform to reflected P and SV waves. When the angle of incidence of P wave reaches 2nd critical angle, both outgoing P and SV waves propagate along the surface forming Rayleigh wave. So, P-wave by itself can form Rayleigh wave. At the same time, incident SV wave can transform to reflected P and SV waves. When the angle of incidence of SV wave (again) reaches second critical angle - both outgoing P and SV waves propagate along the surface forming Rayleigh wave.

Can then Rayleigh wave be formed by interference of both incident P and SV waves on the free surface or Rayleigh waves are formed only separately by incident P or SV waves? Does it mean that right under the epicenter Rayleigh waves cannot form but at some distance from it in order to reach second critical angles?

Thank you', '2016-11-23 09:24:12', 3, NULL, false,5, 28);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Diacritics and non-English letters in anglicized loan words: keep ''em, dump ''em, italicize the words, or what?', 
'Take an expression like déjà vu. This is a French term which is frequently seen in English. In fact, it is included in English dictionaries. But it is often seen in English in a variety of forms:

déjà vu

déjà vu

deja vu

Now, one would probably not consider using frisson or soupçon, both proper unanglicized French words [uh-oh, see edit], without italics to indicate that they were foreign words. But once anglicized, do the words require non-English diacritical marks? Or, if such are used, does that push the word back into foreign status, so that italics are again required?

There''s probably a continuum in operation here, during which a word goes from foreign with foreign markings to English with only English markings (or lack thereof). What I want to know is how one can tell where to draw the line. Does anybody have any useful information about this? Guidelines? Or is it on a case-by-case basis?

Honestly, I feel affected writing à la carte when every damn diner you walk into has an "a la carte" (or "ala carte" or "a la cart") category on the menu.

Edit: For example, see the Free Online Dictionary''s schizophrenic listing for soupçon:

Soup`con´ n. 1. A suspicion; a suggestion; hence, a very small portion; a taste; as, coffee with a soupçon of brandy; a soupçon of coquetry.

and then in the Thesaurus part:

soupcon - a slight but appreciable amount; this dish could use a touch of garlic

So if dictionary entries can''t even remain consistent within the same definition, what chance does a mere mortal have?', '2017-04-15 23:05:26', 8, NULL, false,9, 22);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Apart from the Inuit, and candlefish on the northwest coast, did pre-Columbian America have lamps or candles?', 
'Lamps have been around in the Old World since the Palaeolithic (one was found in the Lascaux cave). Candles are thought to have originated in the Bronze Age, but were certainly used by ancient Greeks, Romans, and Chinese within the 1st millennium BC. Were they used in the Americas before the arrival of Columbus?
Lamps were certainly used in the arctic, where they were known as Kudlik.  The arctic peoples were of course late arrivals to America.

Candles of a sort were used by the northwest coast peoples. A local fish called the Eulachon, but known more colloquially as the candlefish, contains a lot of oil. The locals simply inserted a wick into a dried fish, and lit it. 
There are some videos of people lighting fish on YouTube and the like.

Apart from these two examples, I have not found any references to candles or lamps in early America. It is always harder to show an absence of course. Is anyone out there aware of examples? Otherwise I guess people just huddled around their fires at night...', '2016-02-10 20:48:15', 11, NULL, false,6, 14);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How do I know that I am observing a quasar?', 
'When I find a faint object on the sky that looks like a star or a far away galaxy how do I know that it really is a quasar?

I guess that I could first compare the apparent magnitude (how bright it appears) and the redshift of spectral lines in light from the object.

Then if I interpret the redshift as Hubble redshift and that interpretation tells me that if the object in question shines brighter than some threshold value it must be a quasar?

Is there such a treshold value or how do astronomers know from observations what objects are quasars or not quasars?', '2017-04-22 15:24:36', 0, NULL, false,10, 25);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How does this experiment prove a causal relation between coherence and good feelings?', 
'I''m reading Thinking, Fast and Slow by Daniel Kahneman and I came across the following text:

The Remote Association Test has more to tell us about the link between cognitive ease and positive effect. Briefly consider the two triads of words:

sleep mail switch 
salt deep foam

You could not know it of course, but measurements of electrical activity in the muscles of your face would probably have shown a slight smile when you read the second triad, which is coherent (sea is the solution). 
This smiling reaction to coherence appears in subjects who are told nothing about common associates; they are merely shown a vertically arranged triad of words and instructed to press the space bar after they have read it. 
The impression of cognitive ease that comes with the presentation of a coherent triad appears to be mildly pleasurable in itself. 
The evidence that we have about good feelings, cognitive ease, and the intuition of coherence is, as scientists say, correlational but not necessarily causal. 
Cognitive ease and smiling occur together, but do the good feelings actually lead to intuitions of coherence? Yes, they do. 
The proof comes from a clever experimental approach that has become increasingly popular. 
Some participants were given a cover story that provided an alternative interpretation for their good feeling: they were told about music played in their earphones that previous research showed that this music influences the emotional reaction of its individuals. 
This story completely eliminates the intuition of coherence. 
The finding shows that the brief emotional response that follows the presentation of a triad of words (pleasant if the triad is coherent, unpleasant otherwise) is actually the basis of judgments of coherence. 
There is nothing here that system 1 cannot do. Emotional changes are now expected, and because they are unsurprising they are not linked causally to the words.

(Kahneman refers to the automatic and intuitive way of thinking as system 1)

My Question: Why does the adding of the cover story in this experiment show that good feelings lead to intuitions of coherence (that there is a causal relation)? I find this conclusion rather strange. 
I''m probably mistaken but it seems to me that Kahneman is saying: the fact that there was no intuition of coherence when these participants were expecting to respond emotionally to music, shows that there is a causal relation between the good feelings and the intuition of coherence. 
Why would this make sense?', '2017-01-30 15:08:23', 6, NULL, false, 11, 31);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Why doesn''t Earth absorb our carbon emissions?', 
'If we look at the carbon cycle, we see that man-made carbon emission only account for a tiny fraction of all CO2 emissions.

However, we see a steady rise in atmospheric CO2-levels.

Wouldn''t it be logical to assume that earth would somehow adapt to this increase, e.g. through increased plant growth and why isn''t this happening?', '2017-03-29 07:28:22', 12, NULL, false,5, 25);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('How do I clean dried brushes?', 
'I have a bunch of brushes with dried paint and glue. I''ve tried to clean them up but they''re still hard. What medium is best to restore my brushes?', '2017-01-17 05:52:05', 0, NULL, false,1, 24);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What’s the active principle of a NSAID?', NULL, '2017-05-12 09:14:13', 21, NULL, false,8, 17);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What is the difference between polar and charged amino acids?', 
'Chemically polar amino acids have an uneven (AKA polar) distribution of electrons over their surface.

Charged amino acids have a charged ion in their structure. This is probably where my knowledge is a little shaky!

I guess I am confused at this point. Does this just mean that charged amino acids are really polar amino acids? If that is correct that would explain why I have seen histidine categorised as a charged amino acid, but has no clear ions.', '2016-11-26 07:22:57', 15, NULL, false,2, 3);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Recursive HTTP calls - piping parsed data', 
'I''d like to make recursive HTTP calls. I understand that I can make the initial call and then use pipe and expand to repeat the HTTP call. But how do I pipe the parsed response? Following is pseudo-code demonstrating the question.

fetchPage().pipe(
expand((response) => {
  const parsed = parse(response);
  if (parsed.last == true) {
    return EMPTY
  } else {
    return fetchPage(parsed.nextPage);
  }
}),
// I believe response not parsed will be piped here; how can I pipe parsed instead?
concatMap(response) => response));', '2016-05-22 12:21:33', 16, NULL, false,12, 7);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Is oxalic acid dihydrate considered a primary acid standard in analytical chemistry?', 
'Using oxalic acid dihydrate as a primary standard just seems really odd to me. I''d expect a primary standard to be oven dried. I just seems weird that a hydrate would be used.

Granted I saw numerous references to using oxalic acid dihydrate on the web to standardize NaOH. I assume that for high school and freshman labs that it is "good enough." Using student grade burettes and open air pan balances would greatly limit the possible precision.

Also I''d guess that good enough purity oxalic acid dihydrate can be purchased much more cheaply than potassium hydrogen phthalate (KHP) which would be my choice.

The analytical method as I remember from nearly 50 years ago...

Prepare a concentrated stock solution (4 molar?) of NaOH using distilled water. That went in a jug with a spout just above the bottom. It was capped with a dedicator tube filled with NaOH to absorb CO2 from the atmosphere. It sat for a couple of days to allow sodium carbonate to settle out. (NaOH will have some carbonate.)

Dried KHP on oven at 120 C for four hours and then put that in a desiccator to cool.

Boiled distilled water to remove dissolved CO2 and stoppered that to cool.

Using the cooled boiled distilled water made an approximately 0.1 molar solution of NaOH by diluting the concentrated stock solution.

Using an analytical weighed out 3 samples of KHP to nearest 0.0001 g into flasks and carefully dissolved them in the cooled boiled distilled water with swirling to minimize introducing bubbles into the solution.

Then using NaOH as the titrant, phenolphthalein was used as the indicator. Again careful to swirl solution, not shake, to prevent bubbles.

Using class 1 50 ml burette which was marked to 0.1 mls but read to 0.01 ml.', '2017-03-17 13:19:11', 0, NULL, false,4, 34);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('What would you call a real market that is close to perfect competition?', 
'I want to explain perfect competition to students using a few practical examples without going into much of the theory. But I want it to be theoretically accurate and I don''t want to claim that those are examples of ''perfect competition''. I am thinking about calling it ''near perfect competition'', but I wonder if there is a conventional term for a market that is close to perfect competition. This wikipedia article mentions ''close-to-perfect competition'' but I''m not sure if that''s a conventional term.', '2017-11-06 16:18:36', 5, NULL, false,3, 23);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('In early WW2, how much of the merchant marine was American?', 
'WW2, before the US entered, ran from 1939 Sep 01 to 1941 Dec 07. During this time, a lot of merchant vessels sailed in convoy to Britain.

I am wondering, of all the people who crewed those vessels, how many were American, versus how many were Canadian or British.

Note, I''m not asking for a death toll. I''m asking for a composition of them all.', '2017-05-06 02:09:37', 4, NULL, false,6, 35);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Is there a relationship between HDL-C and LDL-C?', 
'Whenever I read about how to deal with cholesterol level, the rule is to keep a low LDL fraction, as a high HDL one.

How to achieve this usually falls into the categories of a healthy body (sport), a healthy diet and possibly medicamentation.

Since generally the advice is more or less the same for both goals (lowering one fraction and increasing the other one), I was wondering if there is a strong relationship between these fractions. In other words - is moving one in the right directions automatically drags the other one (also in the right direction)?

Anecdotally (and this is what triggered my question), I saw my LDL crash almost by 250% (not by chance but through a good diet, etc. - over a few months) and, surprisingly, the HDL go down by 30% as well.', '2017-03-17 12:59:47', 11, NULL, false,2, 3);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Can corporate tax loss carryforward function like a sort of insurance policy?', 
'I''m a graduate student in mathematics, with a casual knowledge of economics, so please let me know if this question is a non-sequitur or off base.

Here''s the intuition I''m trying to capture: Suppose corporation A has a good year and makes a lot of profit, and corporation B, their competitor, has a bad year wherein they have a net loss. It seems that the following year, corporation B has a relative competitive advantage, in that they have a lower tax burden.

In a system with no corporate tax—and thus no tax loss carryforward—it seems that corporation B wouldn''t have this advantage which might give them some time to recover. In a system with a very high corporate tax, this benefit would be even greater.

Value judgments about the utility of a high corporate tax aside, is there anything to the idea that corporate taxes can serve as a sort of "insurance policy" wherein companies with a bad year are more likely to survive?', '2016-09-11 14:35:15', 3, NULL, false,3, 23);
INSERT INTO "question"(title, description, "date", votes, photo, deleted, id_category, id_user) VALUES('Refraction of light with destructive interference', 
'The wavelength of light determines its refraction in a prism.

But, what if two beams of light destructively interfere as they pass through a small prism, so there is no apparent wave or wavelength at that point in space?

For example, suppose you have two otherwise identical infrared laser beams traveling in almost the same direction intersecting at a prism with one beam 180 degrees out of phase producing total destructive interference at that small area in space. The beams intersect at the prism at a slight angle like an elongated x.

The index of refraction is wavelength dependent but if the waves are totally cancelled in the prism, would the beams exit the prism at same angle as if the beams constructively interfered?

I assume there are no “waves” and thus no detectable wavelength per se while beams are in the glass if there is total destructive interference at that point in space.', '2017-02-07 21:34:44', 9, 'jbTdW.jpg', false,10, 28);


-----------------------------------------
--VOTEQUESTION
-----------------------------------------
INSERT INTO "votequestion"(username, id_question,type) VALUES(1, 59,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(13, 59,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(33, 59,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(9, 60,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(6, 61,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(11, 62,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(14, 62,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(10, 63,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(34, 63,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(32, 64,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(8, 65,'upvote');
INSERT INTO "votequestion"(username, id_question,type) VALUES(14, 65,'upvote');


-----------------------------------------
--ANSWER
-----------------------------------------
INSERT INTO "answer"("text","date", votes, photo, deleted,id_question, user_post) VALUES('One can reject the null hypothesis.

This is a 2-sided hypothesis test since we have 2 critical values; -1.96 and 1.96. The test is usually to compute the test statistic then reject the null hypothesis if the test statistic lies in the critical/rejection region.
In our case, we reject the null hypothesis since 2.1 lies to the right of 1.96 which forms a part of the critical region', '2018-03-17 11:12:24', 34, NULL, false, 1, 30);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('There are a few different options for sculpting materials that fall withing the broad definition of ''clay''

Water based clays

These are essentially the same stuff used for pottery and are widely used for ''fine art'' type sculpture. The big advantage of water based clay is that its plasticity and hardness can be controlled according to how wet it is so you can use wet clay to quickly rough out a form and then allow it to dry a bit to firm up to allow you to refine surface detail.
Their disadvantage is that they tend not to be very string when wet and usually need some sort of internal support armature to support their own weight. You can get clays filled with paper or nylon fibres which are a bit stronger when dry but, in my experience aren''t that nice to work with as the fibres can interfere with the surface.


Oil based Clays

Also known as ''Plasticine'' common professional brands are Chavant and Monster Clay
These are available in a range of hardness and, unlike some cheaper brands can be used with RVT silicone to make moulds.

These tend to be a bit firmer than water based clay and as such lend themselves well to small, finely detailed models and is also a bit cleaner to work with. It has reasonable strength and tends to be less reliant on internal armatures. 
The downside of this is that it can be more time consuming to build up the bulk of the model and tends not to be so good for sweeping organic surfaces, although then can be softened a bit with heat and the professional brands can be melted and cast.

These give very good detail and can be smoothed very effectively. They also don''t dry out and as such can be worked into and reused more or less indefinitely (although they will gradually decline in quality over time).


Modelling Putty

This includes epoxy putties like milliput these are mixed from 2 parts to a firm putty and will dry hard after a few hours. This has the advantage that they are hard and string enough to be used as a finished piece and a such are frequently used for converting and modifying existing miniatures.
Obviously the downside of this is that you only have a few hours to sculpt it before it sets, although you can still drill, sand and carve it once it has set which can be useful in some situations.


Wax

There are a variety of sculpting waxes available. Their big advantage is that their harness can be controlled easily by both heating and blending different wax grades. They can be both sculpted and carved depending on relative hardness.
Waxes especially harder ones tend to be good for getting very crisp detail.


Tools

There are a few broad categories of sculpting tools:

Wax carving/dental tools : these tend to be stainless steel and are good for fine detail. I would say that a set of these is a good starting point.
Ball stylus tools : designed for creating consistent fillets but can also be useful for sculpting fine detail and undercuts.
Hardwood clay tools : these tend to be geared more towards larger pieces in relatively soft media.
Silicone tipped shapers : best suited to final smoothing and polishing, specifically in conjunction with solvents and/or lubricants.
etc etc

Tool selection is really a case of what works for you but all of the above are likely to be potentially useful.


Casting

Casting is a whole separate subject in itself....
Silicone rubber is probably the most versatile mould material and is reasonably easy to use.
For small scale casting you are really looking at catalysed or 2 part resins which include Polyester, Epoxy and Acrylic. In general PU resins are a good bet as they cast well, aren''t too expensive, have good mechanical properties and are reasonably easy to use.
Figurine casting also tends to use resin with powder fillers added. Different fillers give different properties to the casting.
PVC and ABS need to be extruded or injection moulded and aren''t really practical for small scale casting.


General Advice

I would suggest starting out with a relatively soft medium such as water based clay or the softest grades of oil clay. These are easy to work with and will let you ''sketch'' figures reasonably quickly to get a feel for working in 3 dimensions. 
As you progress you may want to try harder grades to allow you to get a smoother finish and crisper detail. As your style evolves you will start to learn exactly what properties you need.', '2018-02-17 22:09:24', 2, NULL, false, 2, 2);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I''d recommend:
C++: The Complete Reference, 4th Edition: Herbert Schildt
Thinking in C++: Introduction to Standard C++, (2nd Edition) : Bruce Eckel
C++ FAQ (2nd Edition): Marshall P. Cline 

If you''re just starting, try to follow this order:

Introduction
Data types
Input (cin) / output (cout)
Selection statement (if , if/else, switch)
Loops (While, for, Do while)
Manipulators
Precedence
File streaming
Functions
Scopes
Arrays
Structs
Classes', '2018-02-17 08:07:24', 6, NULL, false, 3, 7);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('It is necessary for the students to have real time experiences in order to understand any topic in studies. Such experiences help them to know the problems that occur apart from books and hence they can understand how people actually behave in real life to solve them.

Such examples can be studies by doing case studies of events. Similarly in the field of law, doing business law case study assignment help in achieving that motive.

The data for case studies can be extracted from anywhere from internet to libraries. It would be good to ask about some popular case studies from your guide or professor.', '2018-01-13 14:18:09', 1, NULL, false, 4, 23);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I think these agents are called Vesicant agents, but I may be wrong.', '2018-04-12 11:11:23', 0, NULL, false, 5, 38);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I think it''s ''A'', but it could be ''B'' too. ''A'' is always true, but I believe ''B'' suits the question being asked the best.', '2018-02-15 17:52:24', 0, NULL, false, 6, 16);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('You are right, every circuit possesses some unintended capacitance, which is called "stray" capacitance. Whether or not it affects the operation of the circuit depends on the frequencies that the circuit is intended to operate at. 
The amount of stray capacitance that a circuit has is typically tiny, but at high enough frequencies even a very tiny amount of capacitance will couple parts of the circuit together and make it malfunction.

For example, the circuit inside a plug that connects together computer routers and switches in a big router farm has to operate at ultrahigh frequencies, at which two adjacent traces on a circuit board can present enough stray capacitance to stop the device from functioning.

And the capacitance between a long piece of wire strung between two trees as a shortwave transmitting antenna and the ground beneath it is enough to alter the resonant frequency of the antenna, which must be taken into account when designing and building the antenna.', '2017-03-16 14:28:36', 33, NULL, false, 7, 36);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('This species is a derivative of benzene, with a single fluorine atom attached. 
Its melting point is -44 °C, which is lower than that of benzene, indicative of the remarkable effect of fluorination on the intermolecular interactions as seen throughout organofluorine chemistry. In contrast, the boiling points of PhF and benzene differ by only 4 °C.

Why is this true? 

From what I understand the melting point is the point at which the solid and liquid forms are in equilibrium.

Boiling point is the point at which the liquid and gas phases are in equilibrium.

I know that intermolecular forces play an integral role in melting and boiling point. However, why does it seem that the strength of the intermolecular forces in the solid phase is stronger than that in the liquid phase for fluorobenzene?', '2018-11-22 22:11:33', 4, NULL, false, 8, 34);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('They do come from the same language! But they’re even more connected to each other than that!

To run down the interrogative words, we currently have:

Who(m), what, where, when, why, which, whose, whether, and how.
To add to these, there are a couple that have been dying out in recent centuries:

Whence (where from), and whither (where to).
You might notice that all of them (except “how”) begin with “wh”. For most of us, that “h” is silent. But originally, the combination “wh” meant a w sound that was de-voiced, like a whisper (and still is in some dialects).

Anyway, all of these words can be traced directly back to Old English:

hwa -> who
hwam -> whom
hwaet -> what
hwaer -> where
hwaenne -> when
hwi -> why
hwilc -> which
(the final c was pronounced like “ch”)
hwaes -> whose
hwaeder -> whether
hu -> how
hwanone -> whence
hwider -> whither
Note that instead of “wh”, they wrote “hw”… but the sound was the same.

(By the way, you might be wondering why “how” doesn’t begin with w. The way double-u was originally written was literally with a double-u. For example, hwa was written as huua. Since hu already had a u, writing a bunch more of the same letter in there was probably seen as redundant.)

In fact, these words are even older. You can find them in proto-Germanic, the language spoken by the Angles and Saxons before they ever even left for Britain. This why similar words can be found in German: wer, welch, wann, wenn, wo, woher, wohin, etc.

And they go even further back!

Long, long, long before the Anglo-Saxon invasion, before the Romans, before the Germans ever even lived in Germany, there were the Indo-Europeans. This was a tribe of herders from around the Black Sea that were so successful at invading everywhere that their language… well… see the image.

So why do all the question words sound so similar? Because they all came from the same word!

One thing to understand about the language of the Indo-Europeans is that it used declensions. For each noun, you changed the ending based on what role it had in the sentence. In Modern English, we mostly use prepositions instead. Consider the sentence:

I am taking the bus, to the library, and returning the book, into the box.

A language with declensions would say something more like:

I-subject am returning the book-object, the box-into, the bus-using, the library-to.

This used to be everywhere in Indo-European languages; ancient Greek had it, Latin had it, German still has it to a limited extent… even Finnish, despite being completely unrelated, has a staggering array of them. We still use them a tiny bit in our pronouns: it’s the reason why “I” and “me” are different.

So all these words — every one of them — came out of a single word that’s at least 4000 years old:

kwod.

This word was closest to “what”, but it took a different form based on whether it was someone or something, whether is was the actor or the actee, whether it was describing an object, place, or method, and so. These words made it into proto-Germanic, then to Old English (a few more were made a long the way: “which” came from hwilc, which was just hwi+lic, or “who-like”)

You might notice that kwod begins with a k. It turns out that, for some reason, all the words beginning with the k sound switched to an h sound in proto-Germanic.

But they didn’t in Latin! Latin kept the k sound, and with the w, often writing it as “qu”, giving the words:

quis, quod, quorum, cur, quat, qualis, quota, quantus, and of course, Quora!

Some of these live on in English (“quota”, “quantity”, “qualify”, “quorum”). But they’re most obvious in other Romance languages, such as Spanish.

To answer your question, yes, they are all from the same language, but also the same word, and so are many other words too!','2018-02-17 11:12:24', 16, 'kwod.jpg', false, 9, 5);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('You could try ''levity''.

Levity may refer to: a sense of amusement, the opposite of gravitas', '2018-02-17 11:12:24', 76, NULL, false, 10, 20);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('There should be nothing wrong with Frivolity as you pointed out. It actually means lack of seriousness. The word Frivolity, from Latin frivolus. It is synonym to levity. It is directly opposite to word serious.

Frivolity (noun): the quality or state of being frivolous.

Merriam-Webster defines frivolous (adj.) as: lacking in seriousness

"His frequent frivolous behavior in the meeting is a big concern."

There''s also insouciance: Blithe lack of concern; nonchalance.', '2018-02-17 19:42:32', 24, NULL, false, 10, 5);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Install a password manager. A good password manager is much, much better than anything you can do by yourself.

They are software created by security professionals, follow strict development rules, and are tested by a lot of people, and attacked by a lot of people. They have better chance of protecting your passwords than anything invented by the average, even the above average user.', '2018-01-10 18:15:42', 23, NULL, false, 12, 3);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('You''re probably referring to the recent articles about flaws in password managers.

"Password managers have a security flaw. But you should still use one."(Washington Post)
"Password managers leaking data in memory, but you should still use one."" (Sophos)

It''s right there in the titles, password managers have flaws and you should still use one because they''re more secure than what many folks do, like keeping passwords in Excel, emailing them around, pasting them into chat where they''ll be logged by everyone...

All software has flaws. Password managers, and security software in general, is held to a higher standard than run-of-the-mill software. The flaws these articles are talking about in password managers are not rookie mistakes, but risk trade-offs.

1Password has a write up about the latest flaw. It''s not a mistake as it is a consequence of a trade-off to avoid other worse memory bugs. The important bit is that your computer must already be compromised and you have recently typed in your master password. If your computer is already compromised, keeping your passwords in an Excel spreadsheet offers you no protection.

Password managers can do other things to add to your security:

Share and manage your passwords between all your devices, including mobile devices;
Share and manage passwords and credentials with co-workers;
Store more than just passwords securely: GPG and SSH keys and passphrases, one-time password generators, recovery keys, security questions, API keys, notes;
Inform you of insecure passwords (such as reused passwords or password breaches);
Generate secure passwords;
Auto-fill passwords (avoids being shoulder surfed);
Auto-record new accounts.

These avoid bad practices such as reusing passwords, using weak passwords, sharing them via email or chat or a shared document, writing them down (whether on paper or a file), and continuing to use breached passwords.', '2018-01-13 09:22:19', 11, NULL, false, 12, 24);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('The term "harmony" itself is what you are looking for. Being able to sing in harmony (2 or more different voices) with someone however doesn''t require any more skills or theory than singing alone or in unison (same notes, only one voice) because everyone learns "his notes" as he would do singing alone. The only thing I could think of is having a good ear, maybe good relative pitch, but that is required for soloists singers too.

The hard part is composing or improvising the harmony and that requires a lot of different music theory skills, not only the harmony part. If this is what you are looking for, I would suggest to start with generic music theory or if you are really serious about it, take piano lessons.', '2018-08-05 13:15:24', 17, NULL, false, 13, 18);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I believe the density is homogeneous throughout the ball.

I did a numerical simulation of this in Mathematica. I assumed the sphere had radius 1 and generated 100,000 pairs of random points on it, each pair to be connected with string. 
Then I analyzed this set of random strings to see how much total mass (i.e., length of string) lay between r and r+dr in various spherical shells with radii (0.1, 0.2, …, 0.9), using a bit of geometry. 
Then I divided by the radius of the spherical shell to get the volume density and plotted it. The 9 points lay almost on a horizontal line (check the image below).
The horizonal axis is the radial coordinate and the vertical axis is the mass density.', '2018-04-16 07:11:32', 3, '4zNaV.png', false, 14, 16);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Awesome - even though I expected something different, namely a decrease with radius.', '2018-04-17 15:24:12', 1, NULL, false, 14, 8);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Short answer
Ambiguous figures do not necessarily depend on focus, they do depend on attention though.

Background
The figure you provide is huge. From a standard face-to-monitor distance of a meter or so, one indeed needs to scan the image. Under these conditions I agree with you, in that the perceived animal changes when you change focus. 
The ears become a bill when you focus on that part and you see a duck. Reversely, when you focus on the head, you see a bunny.

However, try to zoom out. If it is still too big take some more distance from your monitor and look at the center. 
You''ll notice it will freely flip-flop between critters, also without shifting your gaze. I found another version depicted in the image below. 
That, in my case, even more smoothly transitions from duck to rabbit and vice versa. Hence, foveal focus is not key.

Ambiguous images are not truly illusions; Many illusions rely on unconscious inferences in perception, while ambiguous figures illustrate the role of expectations, world-knowledge, and the direction of attention. For example, children tested on Easter Sunday are more likely to see the figure as a rabbit; if tested on a Sunday in October, they tend to see it as a duck or similar bird (source: Kihlstrom, University of California, Berkeley, see references there). 
Hence, by shifting your attention from one part to another, you may indeed evoke a flip flop and although this i medited by visual input and hence needs the retina, it nonetheless is a process induced by shifting your attention and hence a top-down process. 
Your suggestion of a foveal dependence would imply a bottom-up effect. It is not.','2018-04-16 07:11:32', 2, 'QyICx.jpg', false, 16, 10);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('The answer to the first question is no. That is, there exists an abelian group A isomorphic to A^3 but not A^2. 
This result is due to A.L.S. (Tony) Corner, and is the case r=2 of the theorem described in the following Mathematical Review.

It is shown that for any positive integer r there exists a countable torsion-free abelian group G such that the direct sum of m copies of G is isomorphic to the direct sum of n copies of G if and only if m≡n(modr). 
This remarkable result is obtained from the author''s theorem on the existence of torsion-free groups having a prescribed countable, reduced, torsion-free endomorphism ring by constructing a ring with suitable properties. 
It should be mentioned that the question of the existence of algebraic systems with the property stated above has been considered by several mathematicians. 
The author has been too generous in crediting this conjecture to the reviewer.','2018-04-16 07:11:32', 83, NULL, false, 17, 13);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('You should write your story first, using any names that come to mind. The important thing is writing and completing a draft of your story to determine as quickly as you can if the story is something you are invested in.


Getting stuck on these types of details are a distraction to the work at hand (writing) and I encourage you to ignore these types of things as much as possible. It is a normal part of how the brain works to distract a person from the writing because there are often other subconscious things at play.
This is a part of the normal creative process of the tug of war that occurs between the creative side and the critic and it is important later, but for now should be put off.


The best thing about fantasy is that it''s totally open. After you write your story, you can make up names that have subtle meanings or are related to other things or are entirely made up based on an entire mythology that you create.

As Alexander Graham Bell once said, There are no rules here! We are trying to accomplish something.

And don''t forget: character names often emerge as you write: for now, just use any name that comes to you quickly and later as you get a sense of who the character is you will probably find that the character''s name will emerge from that anyways.', '2018-01-23 07:21:19', 5, NULL, false, 18, 22);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Exposure is the amount of money that you are at risk of losing on a given position (i.e. on a UST 10 year bond), portfolio of positions, strategy (selling covered calls for example), or counterparty, usually represented as a percentage of your total assets.

Interbank exposure is the exposure of banks to other banks either through owning debt or stock, or by having open positions with the other banks as counterparties.

Leveraging occurs when the value of your position is more than the value of what you are trading in. One example of this is borrowing money (i.e. creating debt for yourself) to buy bonds. The amount of your own funds that you are using to pay for the position is "leveraged" by the debt so that you are risking more than 100% of your capital if, for example, the bond became worthless). Another example would be buying futures "on margin" where you only put up the margin value of the trade and not the full cost.

The problem with these leveraged positions is what happens if a credit event (default etc.) happens. Since a large amount of the leverage is being "passed on" as banks are issuing debt to buy other banks'' debt who are issuing debt to buy debt there is a risk that a single failure could cause an unravelling of these leveraged positions and, since the prices of the bonds will be falling resulting in these leveraged positions losing money, it will cause a cascade of losses and defaults. 

If a leveraged position becomes worth less than the amount of real (rather than borrowed or margined) money that was put up to take the position then it is almost inevitable that the firm in that position will default on the requirements for the leverage. When that firm defaults it sparks all of the firms who own that debt to go through the same problems that it did, hence the contagion.', '2018-02-17 13:27:31', 1, NULL, false, 19, 23);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('By and large new uninhabited landmasses were discovered in one of three ways:

1. By hunter-gatherers, walking there when the sea level was much lower at the end of the last glaciation.
2. By hunter-gatherers hopping there from nearby islands or landmasses using their small coastal craft.
3. By farming people with ocean-going vessels (usually Austronesians).

So let''s look at #1. At the time, while Australia wasn''t connected yet to Eurasia, it was pretty close. There also were all sorts of convenient island chains in between the two.

Also notice that the distance between Madagascar and Mozambique is almost unchanged, as is the distance from Australia to New Zealand, and those distances are far greater.

The navigation techniques employed by hunter-gatherers are generally not designed to work far out of sight of land. A boat that is good for coastal fishing and/or transport is a far cry from something one could entrust their life to in the open ocean. 
Ocean navigation itself requires a whole suite of specialized techniques (including math) that really can''t be developed in societies lacking the stratification and specialization afforded to farming societies.

So given that the distance to the horizon is about 5KM (3 miles), in the absence of convenient mountains, any body more that about 10KM from the coast is going to take some luck to bump into. The further off, the more luck needed.

Madagascar is 419km across the Mozambique channel at its closest point. Even if Mount Everest happened to be on the other side of that channel, it would not be visible to a sailor within sight of the African side.

New Zealand is ten times that distance from Australia. There''s pretty much no way a breeding colony of humans is going to just randomly bump into that.

So this means both landmasses were in wait of a farming society to discover them. Enter the Polynesians. They had a agricultural package of domesticated crops and livestock that allowed for job specialization, and used it to create a specialized class/guild of navigators in their society. These folks developed and passed on the open-ocean sailing techniques that allowed their society to discover and populate a third of the globe.

Of course discoveries of nearby islands brought the opportunity for more discoveries, so this process took some time to finish populating the entire Pacific. So New Zealand wasn''t hit upon until about the 13th Century.

Native Australians of course were closer (but still not close!). However, being hunter-gatherers, they simply did not have the means to bridge that gap.

Now, how about Madagascar, you might ask? After all, there were farmers in Africa pretty much as early as there were farmers anywhere on earth! Shouldn''t it have been discovered earlier by African farmers, and not had to wait for Austronesians to find it?

The problem there was the initial farming package in North Africa was temperate climate crops. These don''t grow very well south of the Sahara. A different tropical crop package was developed there, relying on millet and sorghum. This didn''t happen until about 2000 BC directly south of the Sahara in West Africa, and it took a large amount of time for these farmers to displace the hunter gatherers in their march across the continent, and then south. 
They didn''t reach Mozambique until 1-2,000 years ago, and by then the Austronesians were either already living in Madagascar, or nearly there.', '2018-02-04 18:08:48', 43, 'Ht5r3.png', false, 20, 11);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Some of the main features to consider when you want to think about the geology (not the best word here) of a planet are:

1. Does it have a gyro, like a molten core of nickel=iron. This creates poles (magnetism) and with imagination that can lead to lots of creative possibilities.
2. Is there water?
3. Is there an atmosphere, and what kind?
4. What is the temperature? (This overlaps the above two, and is also affected by proximity to its star.)
5. Are there moons. This impacts tides.
6. Is it a gas giant? A liquid planet is possible. Some of our gas giants are essentially liquid. It sounds like this is what you are reaching for.

As far as elemental makeup, I would be surprised if we found areas of space with wildly different compositions. "We are all stardust" is an expression based on the idea that the elements in our solar system were formed in stars, and so the smallest elements are most abundant. This should hold elsewhere.

Once you''ve considered those 6 ideas, you can start to generate a lot of different combinations.

There is some hard science to help you out: there is quite a lot of research to back up what we know about planets and exoplanets including the bodies in our solar system.
Try to look into papers regarding geology of exoplanets. You will find more articles than you can shake a stick at.

With (considerably) more specificity in your question, an equation or two in this answer could make sense. Just ping me if that''s what you are actually looking for! (I believe what you are asking is ''how crazy of a planet can exist, and be scientifically valid,'' not ''how do I use equations to derive the probability of a liquid planet, or some such.'') You might also want to consider moons. They are becoming more and more en vogue in planetary science.', '2018-01-27 20:13:44', 2, NULL, false, 21, 11);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('The layers in the Grand Canyon may superficially appear constant, but they aren''t. 

Layers may be laid down in all sorts of unrelated ways. Speaking as a strictly amateur geologist I don''t think there are any long term periodicities. I suspect the pattern recognition bits of the human brain may be excessively active in this case :-)', '2018-01-22 21:17:46', 1, NULL, false, 22, 25);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('For Children Of Men, a film that features several lengthy single-shot sequences, they built an extensive rig on top of the car, and also modified the car seats so the actors that weren''t on screen could get out of the way of the camera.

According to the movie''s Wikipedia page:

Cuarón''s initial idea for maintaining continuity during the roadside ambush scene was dismissed by production experts as an impossible shot to do. Fresh from the visual effects-laden Harry Potter and the Prisoner of Azkaban, Cuarón suggested using computer-generated imagery to film the scene. 
Emmanuel Lubezki refused to allow it, reminding the director that they had intended to make a film akin to a raw documentary. 
Instead, a special camera rig invented by Gary Thieltges of Doggicam Systems was employed, allowing Cuarón to develop the scene as one extended shot. 
A vehicle was modified to enable seats to tilt and lower actors out of the way of the camera, and the windshield was designed to tilt out of the way to allow camera movement in and out through the front windscreen. 
A crew of four, including the director of photography and camera operator, rode on the roof.

You can check one of the extras on the DVD/Blu-ray, called Under Attack, which addresses this scene.
But these single shot action scenes are still composites of multiple shots. Again citing the movie''s Wikipedia page:

However, the commonly reported statement that the action scenes are continuous shots is not entirely true. 
Visual effects supervisor Frazer Churchill explains that the effects team had to combine several takes to create impossibly long shots, where their job was to "create the illusion of a continuous camera move."
Once the team was able to create a seamless blend, they would move on to the next shot.

[...]

The car ambush was shot in six sections and at four different locations over one week and required five seamless digital transitions', '2018-03-26 22:16:46', 2, NULL, false, 23, 2);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('It will work if you use the standard method --- which is to metalize the surface first. Metalization can be done by vacuum deposition (used for very fine/small objects), or by electroplating (used for objects that are not very fine/small), or by flame deposition (used for objects that are coarse/large).

Electroplating is a three step process that also requires an intermediate metal surface, and that surface is done by deposition plating on to an etched ionic surface. The first step is surface etching, which exposes an ionic surface, then deposition plating, then electroplating.

This suggests two options: You could use electrostatic painting after the deposition stage. That will probably work.

Or you could try electrostic painting after the first, etching stage. You can probably find examples of dust deposition onto an ionic surface around your house. The process is very slow, and requires very fine particles with very low surface tension. If you work on it, you may be able to get a paint and a process to make it work for you. Don''t expect it to be easy.', '2018-11-12 18:00:15', 3, NULL, false, 24, 33);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('As you say, this attempt is reasonable, and it is even done for things like painting aircraft.

Lufthansa says they like this process because more of the expensive paint ends up being on the aircraft and not in the hangar.

However, make sure that there is no danger of igniting your paint with sparks caused by electro-static discharge.

I guess if you use a metal object behind your plastic parts to be painted, you could still achieve good results.', '2018-11-12 21:05:21', 1, NULL, false, 24, 2);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('The object you paint needs to be electrically conductive, which in most practical situations means it needs to be metallic.

Electrostatic painting works by charging up each tiny droplet of paint, and then setting up a E field so that the electrostatic force on the charged particles pushes them towards the object you want to paint. Car companies have used this process for a long time now. It not only saves on paint and reduces particulates in the air, but does a better job of coating the surface evenly with the paint.

It can even somewhat paint the back sides of small objects. The sprayer only needs to be roughly aimed, and each particle will find its way to the charged target surface. However, they are small particles, so the air appears quite thick to them. Some get pushed around to the back side by the air flow, with the electrostatic force then eventually pulling them towards the object.

The paint is generally not conductive. This means that opposite charge builds up on the surface of the object as the paint builds up. This attracts less new paint particles, thereby automatically evening out the paint thickness somewhat.

However, all this works by keeping the underlying object at a significantly different potential than the paint gun nozzle (and thereby the paint particles). The object needs to be conductive to do this. First, it needs to be conductive to establish the potential all along its surface in the first place. Second it needs to be conductive to counter act at least the initial opposite charge of the first layer of droplets which touch the conductive material directly. The charged paint droplets moving from the nozzle to the object is essentially a electrical current. 
If you can''t drain that current from the object, then even a little paint will rapidly charge it up to the reverse polarity.', '2018-11-13 12:33:17', 1, NULL, false, 24, 26);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Why do we have water vapors when our body temperature is also <100°C in the first place?

At normal pressure, water boils at 100°C, meaning that bubbles of pure steam form under water. At lower temperatures, water molecules reversibly move from the liquid to the gas phase and back. The higher the temperature, the higher the vapor pressure, and the higher the equilibrium concentration (partial pressure) of water in air. On the geological scale, there is no equilibrium, and we experience different temperatures, different humidity (related to partial pressure of water in air), and different pressures depending on location.

Why does ice not exist at T>0°C?

Ice, as a pure solid, and water, as a pure liquid, have defined concentration at given pressure and temperature (the equilibrium constant expression for melting includes neither liquid nor solid water, it is simply 1). Above the melting temperature, all the ice melts, there is no equilibrium. This is different from the liquid:gas equilibrium, which exists at temperatures below the boiling point, with lower and lower concentrations of the gas as the temperature drops (here, the equilibrium constant expression included the concentration or partial pressure of water vapor).

If liquid water can evaporate into gas at T<100°C, then why not ice turns into liquid at T<0°C?

Again, this has to do with pure liquids and pure solids having a constant (or nearly constant) concentration. If you add salt to the liquid, however, ice will turn into liquid below the freezing point (effectively lowering the concentration of water in the liquid). Also, the surface of the ice melts at lower temperature than the bulk, so even for pure water, there can be liquid at temperatures below the bulk freezing point.

When I exhale on a wall, no water droplets form.

I would do an experiment and check. I think the water droplets are easier to see on a mirror. Try a grand piano (i.e a smooth surface painted with shiny black paint), you might see the water droplets there as well. Or take a long hot shower and check whether water droplets form on surfaces other than a mirror.', '2018-10-05 11:12:31', 14, NULL, false, 25, 34);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('It should be noted that ice does turn into a gas at T<0°C readily enough.', '2018-10-05 11:12:31', 3, NULL, false, 26, 3);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('If you count geometric multiplicities, eigenvalues may disappear. Does that count as increasing? 
If you consider this image as an example, then going from L1 to L2 changes the eigenvalues from 0 and 0 to 0 and 2, certainly as good an increase as we can hope for given that the Ls are always singular. But the eigenvalues of L1B are 0 and 0 whereas L2B only has a single 0. Is that an increase? ', '2018-01-12 11:42:15', 2, 'Ki29S.png', false, 26, 4);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Thank you for the response. 
Regarding your first question, I could not understand the difference between the two in eigenvalues of L1B are 0 and 0 whereas L2B only has a single 0. 
And were you trying to give a counterexample for the statement? If B is an identity matrix, then L2B would have eigenvalues 0 and 2. 
I am looking for an analytical proof which says that by increasing eigenvalue of one matrix, the eigenvalue of the product is also increased. 
I am getting that trend in my case while using the values, but an analytical proof is what I am after.', '2018-01-14 08:41:26', 1, NULL, false, 26, 7);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Primary dysmenorrhea is the presence of pain at the time of a woman’s menstruation due to a high level of prostaglandins. Secondary dysmenorrhea is associated with anatomical or hormonal changes.', '2018-08-05 11:57:22', 2, NULL, false, 27, 17);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('This is not generally true. As a trivial example, one could the movements of water in a pond where a few small rocks have been tossed. The motion is definitely a wave behavior, and could even be called vibration, but it is most definitely not one dimensional.

Another potential example would be the vibrator on your phone, which vibrates in a circular manner.

But in the end, the key is that atoms in a sound wave don''t vibrate left and right. They are a longitudinal wave, in which particles move in the direction of the wave''s motion and back.

So when something causes a sound, the waves propagate outward from the object creating the sound, as molecules of gas move away from the source and towards the source. This is typically a 3 dimensional pattern', '2018-01-30 15:36:08', 17, NULL, false, 28, 8);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('A sound wave is not a transverse wave, as you may have thought. That means the vibration and the direction of propagation for sound wave are parallel. And the vibration is caused by difference in air pressure at different places. To the question "how I can listen to it" thats because the pressure difference propagates toward your ear and force your eardrum to vibrate.', '2018-01-30 18:19:23', 8, NULL, false, 28, 36);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Note, sound can be also a transverse wave, but only in solid materials (others don''t have a shear stress). It has different properties than the longitudinal sound. This is how the internal properties of the Earth were discovered (liquid mantle, solid core). Also the electromagnetic and gravitational fields propagate as transverse waves.', '2018-01-30 19:18:32', 2, NULL, false, 28, 8);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Like most symptomatologies this question is a little vague and I''d need more data. The first diagnosis that comes to mind is appendicitis, especially due to the existence of leucocitosys since it can also be a diverticulum, or an obstruction in the intestines', '2018-02-24 13:06:28', 4, NULL, false, 29,17);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('The answer, like most things in writing, is that it depends.

In my own poetry writing I''ve found that I am greatly helped by first learning and strictly following all stylistic guidelines. I have often been drawn towards formal verse structures such as the villanelle, Shakespearian-style sonnet, or sestina. By forcing myself to follow these guidelines, I really challenge my own creative process. I also learn what the rules do to the poem. I learn the impact of, say, repeating the same line at the end of every other stanza or how a certain rhythm and rhyme scheme hits the ear.

The really famous uses of all of these formal structures for poetry usually, although not always, end up breaking the rules or at least bending them. The key is that there is a structure to be twisted, and in knowing what the impact of that structure is and how twisting it in certain ways has certain impacts. For example if the poem is in iambic pentameter and there is an additional syllable on the line to make it longer or the stress falls on two syllables back to back, the reader will notice that line or those syllables more than other parts of the poem which might be comfortable.

One way of breaking the rules that novice poets often fall into and shouldn''t is using antiquated language or awkward language constructs because "that`s the way poetry is written." Actually, it is not. A poem by John Donne reads the way that it does because John Donne was writing somewhat in the vernacular of his time but also in a time before the English language was as standardized as it is now. The modern poetry-reading public does not tend to have a high tolerance for poetic license with grammatical constructs unless it really has a great, positive impact on your poem. You can''t just re-structure sentences to fit a rhyme scheme and call it good poetry - you have to fit the rhyme scheme in a way that serves the grammar of your sentence, too.

The most revered modern poets often (not always) write very compressed language that also seems modern and moves smoothly. When they break these patterns, the impact adds to the theme and feel of the poem, it is not capricious. As a poet you''ll have to learn how to do this as well.', '2018-03-11 11:11:12', 8, NULL, false, 30, 5);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Sillimanite is strictly speaking a mineral rather than a rock type. 
It is found in metamorphic rocks that were high aluminium sediments, particularly ones that contained a lot of feldspar or clay. 
They are usually found in high grade metamorphic rocks (gneisses) formed at over 600 Celsius.', '2018-10-05 10:23:24', 2, NULL, false, 31, 25);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Amplification

It does not depend on the music file, but at the amplifier sending the music to a speaker, or to a headphone/earplug connector.

Music file

A music file only contains ''values'', and mostly in a compressed form. After uncompressing, you get values which has a certain amount on bits per value (typically 16 or more).

Conversion

A microcontroller can send these values to a speaker via an pre- and/or amplifier, which converts it into actual voltages. So it depends on the amount of amplification.

Protection

Also note that sending continuous ''max values'' do not result in a loud sound, actually it would breaks the speaker (to prevent this, in the amplifier a so-called DC speaker protection is present). A wave is needed to let the speaker move outwards and inwards very fast, and this is done by sending changing values to the speaker.

Measure

If you want to measure, you can use an oscilloscope to measure the audio output while sending a sine wave with a maximum amplitude.', '2018-11-05 14:35:42', 8, NULL, false, 32, 13);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES( 'Normally it''s limited by the cellphone battery voltage, which is about 3.7V. However there are other limits in play like the EU volume limit of 100dB - which is specified as SPL rather than a voltage.', '2018-11-06 16:36:22', 8, NULL, false, 32, 13);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES( 'Wassily Kandinsky immediately comes to mind. His work always seemed like a piano composition, his use of lines and shapes creating a rhythm filled and enhanced with color. One can almost hear the music.', '2018-07-29 22:57:31', 1, 'main-qimg.jpg', false, 33, 13);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES( 'There are also my two favorite artists, Richard Diebenkorn and Helen Frankenthaler, both use color in a rich and lively fashion, in broad abstract and form. Their works are like the high church of color, one can stand in front of them in awe and reverence.', '2018-07-29 23:10:21', 1, NULL, false, 33, 13);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES( 'This is a very broad question, but I''ll try to be brief:

No scientific renaissance
No capital accumulation
Sclerotic societal problems
No coal
Not friendly to Europe, where the action was happening.', '2018-07-13 20:44:56', 1, NULL, false, 34, 14);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('This is hard to answer because no-one really knows what a thought is. If you make it narrower, like a plan of action for catching a ball you might get more detailed answers! But then it''s not clear how well those answers would transfer to things like language or deciding what to eat for dinner. Having said that, you might enjoy "The mind is flat" by Nick Chater. One thing we do know for sure about thoughts is that they''re really fast. Chater describes some experiments suggesting that the brain is always improvising, so the answer is probably more down the "real-time" end', '2018-02-13 18:45:02', 1, NULL, false, 35, 19);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Enables implies that this uncovers a new ability for the user to log in.

Using a different wording:

The password gives the user the ability to login.

Whereas allows implies that the user has been given the permission to login as if they weren''t allowed before.

Attempting to put this into a different wording:

The password gives the user the permission to login

This is erroneous as the permission may in this case already be granted and they simply haven''t been given the ability to login yet', '2018-11-25 23:55:23', 1, NULL, false, 36, 22);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('But gramatically, they''re identical. They just carry different meanings? (And in the example, it sounds like “enables” better describes what passwords do?)', '2018-11-26 01:14:56', 1, NULL, false, 36, 26);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Grammatically yes, they''re identical. But they carry different meanings. So you''re right to think that the problem was within you when perceiving the phrase as erroneous. ''Enables'' definitely describes the function of the user being given the password better than ''allow'' would. As I''ve attempted to lay out in my answer.', '2018-11-26 09:55:16', 1, NULL, false, 36, 22);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Officially, I requested to Bayer who is innovator of Ciprofloxacin and received 1 in-vitro study article.

The author of the in-vitro study concluded that there''s possibility as strategic option for intestinal sterilization but clinical study with patients must be confirmed.

Again, this is a in-vitro study but not human clinical study.', '2018-05-22 12:21:33', 3, NULL, false, 37, 21);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('The answer to your first question is, in a sense, yes, the photon avoids the angles that would produce destructive interference. But probably not in the way you are thinking.

Photons are not little balls of something. They are not particles as we understand the word in our classical macroscopic world. The word "particle" has a different meaning in the quantum microscopic world. A particle is an excitation of a field, in this case, the EM field. When the field gives up a quantum of excitation during an interaction with another object, it does so 1.) at a point 2.) gives up its energy to the other object and 2.) gives up its momentum. That''s just what happens in a classical collision. But unlike the classical collision, the "particle" vanishes. Clearly the classical particle picture has a problem.

In the quantum mechanical picture, we start with the EM field. The field fills all of the space between the source and the screen (even if there is no source, the zero-point field exists), and it exists in whatever slits are available. If there are two slits there are nodes (points of zero field) on the screen due to what you might call interference, but you might also call it diffraction, the way the field arranges itself around objects. The field, and thus the excitation (photon) fills all of space, but the field, and thus the excitation, has zero amplitude at a node. No interaction will occur at the points on the screen where a node exists. As if those locations are avoided, even though there is only one photon. (By the way, this picture explains the statement "A photon interferes only with itself.")

I don''t know quite how to interpret your second question. I''ll say this: In the quantum mechanical picture, the field exists in both slits, so the excitation exists in both slits. If you call the excitation a photon, then the photon goes through both slits. But this is a dangerous statement because it mixes up classical, quantum, and everyday meanings of words.

By the way, this is not the only way to "explain" these things. There are other mental pictures that are consistent with the theoretical physics. There''s no one correct picture. I think (my opinion) that this fact speaks to our brain''s limitations, its inability to understand the "true" nature of what''s going on. Our limited brains create metaphors based on things that we can understand or visualize. But this is just my personal point of view.', '2018-05-06 09:27:01', 16, NULL, false, 38, 16);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('This is enlightening. My second question simply if there are two counters at the source and screen c1 and c2 is c1= c2 at the end of a single photon at a time experiment (assuming all emitted photons will make it through the slits regardless of which slit or both at the same time)', '2018-05-08 02:23:55', 8, NULL, false, 38, 8);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('This version of the question really requires a long answer. The presence of two detectors complicates the picture. If the detector near the source "detects a photon" (records an interaction), that excitation (photon) is gone. If the detector near the screen records an interaction, it will be a different excitation of the same field. Is this a different photon? Uhhh... the language is getting in the way. A time-resolved experiment will not detect that second photon a time d/c later. But there will be a tendency for detections to occur near each other. We''re off the rails now! ', '2018-05-06 17:28:33', 2, NULL, false, 38, 16);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I''d call it a montage:

"Montage is a technique in film editing in which a series of short shots are edited into a sequence to condense space, time, and information."

It shows several conversations that took place over a long time, but compresses them into a shorter sequence for viewers.

To me it bares a similarity to the traditional montage sequence where a character is training or learning a skill. Here, the one character is learning what "coursing" is. It took several conversations to make the point, but we only see the relevant parts.', '2018-05-10 18:15:42', 5, NULL, false, 39, 24);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('You can change the kernel''s idea of the hostname on a systemd-based system using the hostnamectl tool. For example:

hostnamectl set-hostname whatever
You can view the system''s current idea of the hostname with:

hostnamectl             # equivalent to hostnamectl status
Keep in mind that this does not change a running process''s idea of the hostname. Such a process would have to check the hostname again in order to be updated, and almost no process does. Thus such a process would need to be restarted. In order for every process to begin using the new hostname, they must be restarted. It''s generally easier to just reboot the system than to restart every service individually.', '2018-04-16 10:18:32', 26, NULL, false, 40, 1);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('It sounds like you''re talking about a classic example of Incubation.

Incubation is defined as a process of unconscious recombination of thought elements that were stimulated through conscious work at one point in time, resulting in novel ideas at some later point in time.

There is a great article by John F. Kihlstrom: Intuition, Incubation, and Insight: Implicit Cognition in Problem Solving. Basically it is believed that Incubation or stopping conscious thought on a problem allows one to find more creative solutions to a problem:

"In these cases, Wallas argued, thinkers enter an incubation stage in which they no longer consciously think about the problem. Wallas (1926) actually distinguished this phenomenon between two forms of incubation: "the period of abstention may be spent either in conscious mental work on other problems, or in a relaxation from all conscious mental work" (p. 86).

Wallas believed that there might be certain economies of thought achieved by leaving certain problems unfinished while working on others, but he also believed that solutions achieved by this approach suffered in depth and richness. In many cases of difficult and complex creative thought, he believed, deeper and richer solutions could be achieved by a suspension of conscious thought altogether, permitting "the free working of the unconscious or partially conscious processes of the mind" (p. 87).1 In either case, Wallas noted that the incubation period was often followed by the illumination stage, the "flash" (p. 93) in which the answer appears in the consciousness of the thinker."

Kihlstrom''s references contain many good experiments backing up the claims made.

A reason incubation may work is because it releases "fixation"; that case of being "stuck" which is a sort of mental rut which prevents one from thinking of new answers or methods of solving a problem.

We become stuck on an idea that we believe should work but doesn''t, which may hold us back from thinking of a different solution which actually does work, one we may have previously not considered or disregarded.', '2018-04-09 18:18:46', 17, NULL, false, 41, 31);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Your orbit is uniquely determined by a current position (three coordinates) and velocity (three more quantities to give magnitude and direction). Going places involves changing your orbit. For instance, from a circular orbit about Earth, enter an elliptical transfer orbit to the moon, then circularize your orbit about the moon. Everything you do in space travel involves changing from one orbit to another orbit, and that is done by changing your velocity.

Heavy spaceships have to change their momentum more than light spaceships, but they both have to change their velocities by the same amount. It can be done with a long, slow acceleration, or a short, fast acceleration. Whatever ship you have, and however you do it, the delta-V is the end result that you must achieve.

Your new orbit definitely does depend on your vector delta-V, but pointing your spaceship is basically a freebie. And you don''t get any of your fuel back if you accelerate first in one direction and then in the opposite direction. So, as a characteristic of your spacecraft, it really kind of is a scalar quantity, even if direction does matter when you use it.', '2018-04-30 12:15:47', 6, NULL, false, 42, 16);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Notice how in some fonts, the letter "A" has little things that stick out, too.

But you wouldn''t write those little tails in handwriting, would you?

Same thing with this kanji. I don''t think I''ve met anyone who writes them with the jumps.', '2018-04-14 13:45:29', 17,'JBcRK.png', false, 43, 22);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('These "jumps" that you brought up are not part of the kanji, they are part of the typeface.

(More specifically, they may be treated like serifs - or little decorations at the edge of certain lines)

When you are learning kanji, you should definitely not be copying or referencing printed characters. You should learn from hand-written characters. The basics of how to write kanji are not taught or learned from printed or typeface forms.

The best online reference I know of for hand-written Japanese characters is the kakijun website', '2018-04-14 18:18:42', 19, NULL, false, 43, 5);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('If you want animated backgrounds which is vector form there are many aspects to do this but according to your after effect point, there are many uses of it.

If you thinking about after effects then its already good cuz of some core feature of After Effects like Motion Blur and Easy Ease will let you make animations flawless and natural. You can watch some examples here.

The good thing is that you don''t need to be a pro to create some natural motion graphics. So as per my suggestion I would recommend you to go with After Effects for now!', '2018-03-22 17:09:21', 0, NULL, false, 44, 2);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Well let''s at least look at the definition. The definition has 3 parts (in bold) to it, so it is more convenient to create a definition instead of writing it out every time:

A univalent function is a holomorphic function on an open subset of C that is injective (one-to-one)

So they are functions who, on some open subset U of the complex plane, satisfy these strong conditions:

1) Holomorphic (Differentiable in a neighborhood around every point in U)

2) Injective (One-to-one)', '2018-01-14 13:22:48', 1, NULL, false, 45, 4);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('i++ and (i)++ behave identically. C 2018 6.5.1 5 says:

A parenthesized expression is a primary expression. Its type and value are identical to those of the unparenthesized expression. It is an lvalue, a function designator, or a void expression if the unparenthesized expression is, respectively, an lvalue, a function designator, or a void expression.

The wording is the same in C 1999.', '2018-07-09 22:19:24', 90, NULL, false, 46, 7);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Not in water. Free electron in water is really unfavorable, so no significant concentration of them can be generated chemically, and it almost immediately reduces water itself to hydrogen (but I heard rumors about generation of solvated electrons in water in very special experiment with short half-life)

In liquid NH3, however, solvated electrons can occur, so self-discharge of galvanic cells with NH3-based electrolyte may occur through travel of electrons via electrolyte.', '2018-04-03 07:09:13', 12, NULL, false, 47, 9);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Electrons cannot survive in aqueous state. Being a charged subatomic particle, the electron has to stay close to protons which are located at the center of the atom. Hence, the electron can move from one atom to another which are closely-packed, what we have in a solid.', '2018-04-04 05:46:21', 3, NULL, false, 47, 34);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('It was rare for laity to be able to read and write; everyone carried a knife but generally only nobility and soldiers carried weapons; Scott mentions the writing materials in chapter V because they will be used in chapter VI; the writing materials included parchment, quills and ink.', '2018-06-08 18:15:04', 6, NULL, false, 48, 22);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I found this on the BBC:
A tiny Japanese puffer fish creates a grand sand sculpture on the featureless seabed by using his fins to dig furrows. He uses this to attract the attention of passing females.

The following papers analyse said structures and the ethology in more depth:

We report that male pufferfishes (Torquigener sp., Tetraodontidae) constructed large geometric circular structures on the seabed that played an important role in female mate choice. Males dug valleys at various angles in a radial direction, constructing nests surrounded by radially aligned peaks and valleys. Furthermore, they created irregular patterns in the nest comprising fine sand particles. 
The circular structure not only influences female mate choice but also functions to gather fine sand particles in nests, which are important in female mate choice. Strangely enough, the males never reuse the nest, always constructing a new circular structure at the huge cost of construction. This is because the valleys may not contain sufficient fine sand particles for multiple reproductive cycles.

Role of Huge Geometric Circular Structures in the Reproduction of a Marine Pufferfish (2013)

Here, we examined the process of the outer ring construction, and extracted the ‘rules’ followed by the pufferfish. During construction, the pufferfish repeatedly excavates ditches from the outside in. 
Generally, excavation starts at lower positions, and occurs in straight lines... A simulation program based on these data successfully reproduced the circle pattern, suggesting that the complex circle structure can be created by the repetition of simple actions by the pufferfish.

Simple rules for construction of a geometric nest structure by pufferfish (2018)', '2018-08-19 18:49:56', 6, NULL, false, 49, 11);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I think this is a case where authors can decide for themselves where to draw the line. Or, if the writing is for a certain publication, the editors will have a policy for whether a given word should or should not [have diacritics].

Various publications will have strict rules about what diacritics are used and when. For example, The New Yorker always uses diaeresis. Each publication seems to have its own rules for bolding, headers, section numbering, hyphenation, capitalization, reference citation, and so on. And there is no definitive format.

I believe that diacritics fall into this category, as evidenced by their generally inconsistent use (though internally consistent within many publications).', '2018-04-16 08:15:42', 6, NULL, false, 51, 5);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('As you say in your question, "It is always harder to show an absence" but there really does not appear to be evidence for lamps or candles in pre-Columbian America, aside from the Arctic & Subarctic regions (see this AD 500–1100 Kachemak lamp from Cook Inlet, Alaska).

There is, though, one piece of evidence which partly supports the absence of candles and lamps. The Spanish chronicler Antonio de Herrera y Tordesillas (1549 - 1626)

tells of a wise Indian who, when asked to name the most important things he and his fellows had received from the Castilians, put chicken eggs at the top of his list, because they were plentiful, “fresh every day, and good cooked or not cooked for young and Old.” (The other items on his list were horses, candles, and lamps.)

Cited by A. W. Crosby in The Columbian Exchange (30th anniversary edition, 2003)

Unfortunately, it`s not clear which culture he`s talking about. Other ''evidence'' mostly relates to its absence. For example, Jacques Soustelle in Daily Life of the Aztecs (1961), says:

resinous torches of pine-wood (ocotl) were used indoors, and outside links and huge braziers piled with resinous wood served for public lighting when circumstances -- a religious ceremony, for example -- called for it.

link = a torch of pitch and tow for lighting the way in dark streets

brazier = a container for hot coals, generally taking the form of an upright standing or hanging metal bowl or box

Charles C. Mann, in 1491: New Revelations of the Americas before Columbus mentions only torches for ''Native Americans'', while the reference cited in drewbenn''s comment seems is at best inconclusive and probably wrong if this translation of the poem (Prayer to the Sun) the author cites is correct. The other source cited by drewbenn looks more promising but is far from conclusive (as Orange comments).

The idea that the Seneca''s easy access to oil meant they must have used lamps can also probably be discounted:

the Seneca tribe, part of the Iroquois nation, collected seep oil for hundreds of years, using it as a salve, insect repellent, and tonic. Europeans called the dark, gooey substance Seneca Oil and found it effective for treating sprains and rheumatism. It also burned, but was unappealing as a lamp oil due to its unpleasant odor and smoke.

Gary Prost & Benjamin Prost''s The Geology Companion: Essentials for Understanding the Earth also mentions the Seneca, saying they used oil for body paint and medicine (but no mention of lamps).

On the items on auction sites mentioned by Denis de Bernardy in his comment, googling has turned up nothing convincing. Related to this, in The Maya Indians of southern Yucatan and northern British Honduras (1918), author T. W. F. Gann mentions a ''small soapstone lamp'' find but concludes that it is post-Columbian as the style is "totally unlike" that of ancient Maya culture.

(all emphasis is mine)', '2018-02-12 14:20:57', 8, NULL, false, 52, 35);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('In addition to measuring the redshift and the apparent brightness of a faint object, astronomers also measure the spectrum of the light coming from it. These three things are used to identify whether or not a faint object really is a quasar, and the details of this identification are available on the web and in any good introductory text on astronomy.', '2018-04-22 19:28:55', 0, NULL, false, 53, 16);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('This excerpt refers to an experiment described in Topolinski & Strack (2009) and Topolinski & Strack (2009), and is part of a series of experiments that used a variety of different methods to demonstrate the causal relation between affect and coherence, of which only 1 is described above, so even if it isn''t convincing by itself, a lot of additional evidence would need to be questioned to thwart the conclusion.

This particular experiment uses a popular paradigm developed by Schwarz & Clore (1983) (which in turn is based on a previous experiment by Zanna & Cooper (1974); for reviews see Schwarz & Clore (1988), Schwarz & Clore (1996), Schwarz (2012), and Wikipedia), that has been used many times to demonstrate a causal relation between affective experience and intuition or metacognition. The premise behind this experimental paradigm is that once an affective experience is attributed to a particular cause, it is no longer used as information for subsequent judgments. This assumption has been demonstrated in many experiments, but contrast it with Payne et al (2005) and Allen et al (1989) who report that attempts to correct misattribution failed in their studies, suggesting that affective experience information can be reused in some circumstances. Luckily, this latter possibility does not impact the experiment in question.

The authors of this experiment propose a detailed mechanism for how subjects make judgments of coherence: As the word triad is read, the processing fluency (cognitive ease, or the rate that the words are processed) causes an affective response (subtle smiling reaction), that subjects become aware of, and attribute to subsequent intuitive judgments (such as coherence).

This particular experiment tests the hypothesis by manipulating subjects to misattribute the affective response (to background music). Thus, if affect does not inform coherence judgments, then misattributing it to another source should have no effect on results. On the other hand, if affect does cause coherence judgments, then attributing affective response to another cause should eliminate it as a source of information for coherence judgments, resulting in poorer performance. The control group listened to the same music, and was also directed to misattribute something to it, but it was fluency rather than affect.

The results of the experiment indeed demonstrated that once subjects reattribute positive affect to background music, they no longer use it for coherence judgments, and this results in a significant reduction of correct responses, leading to the conclusion that affect is an important indicator (cause) of coherence.', '2018-01-30 23:54:16', 3, '6eJhC.png', false, 54, 19);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('You need a Brush Cleaner and Restorer formulated for this task. There are a few of these available, only in art supply stores; you''ll want to check with the ones around you to see what you can purchase.

If you are in the United States, Winsor & Newton makes a widely available product I have used with great results; it''s formulated for dried acrylic and oil paints, but I have also used it to dissolve away dried latex (house) paint, as well as years-long set dry varnishes. With this product, you''ll let the brush soak up the solution, checking periodically to monitor the progress. In a low quality brush, it may end up damaging it by damaging any glues holding the bristles in place in the ferrule, but at the point you''re using a restorer on a brush, it''s typically ruined anyway, so there''s no risk in trying. In my experience, I''ve only had one or two brushes lost this way out of dozens.

Unfortunately, this particular product is not available outside of the United States, but other companies do make similar products that you''ll be able to find by asking your friendly local art supply shop. The employees there should be able to recommend a product to you with which they''re familiar.

Ultimately, the best option is to avoid needing a restorer in the first place; take proper care of your brushes, cleaning them right away instead of letting paints dry in them. Avoid getting paint up into the ferrule, and dry them bristles down so paint and water don''t soak down into the ferrule and cause damage.', '2018-01-17 18:25:12', 2, NULL, false, 56, 2);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('NSAID is a non-steroidal anti-inflammatory drug that inhibits various citokines responsible for the normal inflammatory response in your body. Some examples include TNF-alpha, IL-2, IL-6', '2018-05-14 16:57:42', 1, NULL, false, 57, 21);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('All amino acids with side chains that are charged at physiological pH are, by definition, also amino acids with polar side chains (e.g., lysine or glutamic acid). The converse is not true; in other words not all amino acids with polar side chains are necessarily amino acids with side chains that are charged at physiological pH (e.g., threonine or asparagine). The pKa of the nitrogen in histidine''s imidazole ring is quite close to physiological pH, and in some situations would be charged and in other environments would be uncharged. In either case it would be considered polar (or largely hydrophilic in nature).', '2018-11-26 18:26:45', 9, NULL, false, 58, 29);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('You should do parsing before you expand it.

E.g.

const fetchPageParsed = () => {
  return fetchPage().pipe(
    map(response => parse(response))
  );
};

fetchPageParsed().pipe(
  expand(parsed => {
    if (parsed.last) {
      return EMPTY;
    }

    return fetchPageParsed(parsed.nextPage);
  })
)', '2018-05-22 20:25:36', 0, NULL, false, 59, 33);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Jander-Blasius (14. Ed., 1995) uses nonhygroscopic sodium oxalate, dried at 230-250°C (it decomposes above 250 according to wikipedia), to standardise permanganate titer solution against. They give no other useable standard for manganometry, so I assume this is it.

I have no idea why anybody would want to use (or recommend using) the free acid instead, except perhaps to insult his first-year students'' intelligence. Can''t imagine it''s much cheaper, in analytical grade.

For NaOH titer solution, Jander recommends using a secondary standard, e.g. HCl solution. HCl itself is standardised against freshly precipitated and dried sodium carbonate, or HgO (+4KI+H2O -> K2[HgI4]+2KOH) dried over conc. sulfuric acid.', '2018-03-17 14:19:45', 1, NULL, false, 60, 9);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I don''t think there is a standard term for what you''d want to refer to. I''d consider the following good candidates though:

Near-perfect / almost-perfect / close-to-perfect / epsilon-perfect competition (the last of course comes from the notion of epsilon-equilibrium in game theory)
Markets with low concentration, or lowly / sparsely concentrated markets (based on the empirical measure of concentration ratio)', '2018-11-06 20:15:22', 3, NULL, false, 61, 32);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('I do not have a special term, but I give this analogy:

We know what a triangle is. But in the real world, it is impossible to draw a perfect triangle and there do not exist examples of perfect triangles.

Similarly, we have just learnt what perfect competition is. But in the real world, there do not exist examples of perfect competition. Nonetheless, here are some examples of real-world markets that come "close to" perfect competition ...

We stress that these markets are not actual examples of perfect competition. (To repeat, such examples do not exist.) Instead, these are merely examples that come "close to" perfect competition.', '2018-11-07 07:56:02', 7, NULL, false, 61, 6);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Prior to the beginning of World War II there about 55,000 civilian sailors employed in the U.S. merchant marine. This number increased to as many as 250,000 men who served in the U.S. merchant marine by the end of the war. A pre-war merchant fleet of 1,340 cargo ships and tankers expanded to at least 4,221 U.S. merchant ships by the end of World War II.', '2018-05-06 13:22:55', 1, NULL, false, 62, 14);
INSERT INTO "answer"("text","date", votes, photo, deleted, id_question, user_post) VALUES('Thinking about water waves; interference is only a temporary thing. If 2 waves travel cross a pond from opposite sides, but let''s say they are opposite in phase, in the middle of the pond when they meet they cancel, BUT this is only temporary. After they pass each other, they are visible again and continue along to the opposites shores!. 
Waves cancelling or ''interference'' is one of the most poorly explained phenomenons in physics, because they really don''t literally cancel, they just temporarily interact with each other. The same could be said for light waves, 2 photons never cancel, that''s a violation of energy conservation. In fact the only way to ever observe photons it to have them interact with matter (i.e. an electron in an atom/molecule). 
2 photons arriving at an atom that are out of phase are very difficult for the atom to observe and 2 photons in phase increase the probability of observation greatly, it''s all Quantum Mechanics or probability.', '2018-02-07 23:36:48', 0, NULL, false, 65, 16);


-----------------------------------------
--VOTEANSWER
-----------------------------------------
INSERT INTO "voteanswer"(username, id_answer,type) VALUES(3, 73,'upvote');
INSERT INTO "voteanswer"(username, id_answer,type) VALUES(34, 73,'upvote');
INSERT INTO "voteanswer"(username, id_answer,type) VALUES(12, 74,'upvote');
INSERT INTO "voteanswer"(username, id_answer,type) VALUES(12, 75,'upvote');
INSERT INTO "voteanswer"(username, id_answer,type) VALUES(11, 76,'upvote');
INSERT INTO "voteanswer"(username, id_answer,type) VALUES(35, 76,'upvote');
INSERT INTO "voteanswer"(username, id_answer,type) VALUES(13, 77,'upvote');
INSERT INTO "voteanswer"(username, id_answer,type) VALUES(36, 77,'upvote');


-----------------------------------------
--COMMENT
-----------------------------------------
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(35, 36);
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(49, 50);
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(50, 51);
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(54, 55);
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(61, 62);
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(65, 66);
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(66, 67);
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(69, 70);
INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES(70, 71);


-----------------------------------------
--BESTANSWER
-----------------------------------------
INSERT INTO "bestanswer"(id_bestAnswer,attributionDate,"text" , "date", deleted, active, votes, photo) VALUES(41,'2018-12-01 14:55:21','Wassily Kandinsky immediately comes to mind. His work always seemed like a piano composition, his use of lines and shapes creating a rhythm filled and enhanced with color. One can almost hear the music.', '2018-07-29 22:57:31',false,true,63,'main-qimg.jpg');
INSERT INTO "bestanswer"(id_bestAnswer,attributionDate,"text" , "date", deleted, active, votes, photo) VALUES(45,'2018-12-26 02:14:23', 'Enables implies that this uncovers a new ability for the user to log in.

Using a different wording:

The password gives the user the ability to login.

Whereas allows implies that the user has been given the permission to login as if they weren''t allowed before.

Attempting to put this into a different wording:

The password gives the user the permission to login

This is erroneous as the permission may in this case already be granted and they simply haven''t been given the ability to login yet', '2018-11-25 23:55:23',false,false, 1, NULL);
INSERT INTO "bestanswer"(id_bestAnswer,attributionDate,"text" , "date",deleted, active, votes, photo) VALUES(49,'2018-12-09 09:27:01', 'The answer to your first question is, in a sense, yes, the photon avoids the angles that would produce destructive interference. But probably not in the way you are thinking.

Photons are not little balls of something. They are not particles as we understand the word in our classical macroscopic world. The word "particle" has a different meaning in the quantum microscopic world. A particle is an excitation of a field, in this case, the EM field. When the field gives up a quantum of excitation during an interaction with another object, it does so 1.) at a point 2.) gives up its energy to the other object and 2.) gives up its momentum. That''s just what happens in a classical collision. But unlike the classical collision, the "particle" vanishes. Clearly the classical particle picture has a problem.

In the quantum mechanical picture, we start with the EM field. The field fills all of the space between the source and the screen (even if there is no source, the zero-point field exists), and it exists in whatever slits are available. If there are two slits there are nodes (points of zero field) on the screen due to what you might call interference, but you might also call it diffraction, the way the field arranges itself around objects. The field, and thus the excitation (photon) fills all of space, but the field, and thus the excitation, has zero amplitude at a node. No interaction will occur at the points on the screen where a node exists. As if those locations are avoided, even though there is only one photon. (By the way, this picture explains the statement "A photon interferes only with itself.")

I don''t know quite how to interpret your second question. I`ll say this: In the quantum mechanical picture, the field exists in both slits, so the excitation exists in both slits. If you call the excitation a photon, then the photon goes through both slits. But this is a dangerous statement because it mixes up classical, quantum, and everyday meanings of words.

By the way, this is not the only way to "explain" these things. There are other mental pictures that are consistent with the theoretical physics. There''s no one correct picture. I think (my opinion) that this fact speaks to our brain''s limitations, its inability to understand the "true" nature of what''s going on. Our limited brains create metaphors based on things that we can understand or visualize. But this is just my personal point of view.', '2018-05-06 09:27:01',false, true, 16, NULL);
INSERT INTO "bestanswer"(id_bestAnswer,attributionDate, "text" , "date", deleted, active, votes, photo) VALUES(39,'2018-12-11 14:33:46', 'Amplification

It does not depend on the music file, but at the amplifier sending the music to a speaker, or to a headphone/earplug connector.

Music file

A music file only contains ''values'', and mostly in a compressed form. After uncompressing, you get values which has a certain amount on bits per value (typically 16 or more).

Conversion

A microcontroller can send these values to a speaker via an pre- and/or amplifier, which converts it into actual voltages. So it depends on the amount of amplification.

Protection

Also note that sending continuous ''max values'' do not result in a loud sound, actually it would breaks the speaker (to prevent this, in the amplifier a so-called DC speaker protection is present). A wave is needed to let the speaker move outwards and inwards very fast, and this is done by sending changing values to the speaker.

Measure

If you want to measure, you can use an oscilloscope to measure the audio output while sending a sine wave with a maximum amplitude.', '2018-11-05 14:35:42',false, false, 8, NULL);
INSERT INTO "bestanswer"(id_bestAnswer,attributionDate,"text" , "date", deleted, active, votes, photo) VALUES(57,'2018-12-15 22:18:42', 'These "jumps" that you brought up are not part of the kanji, they are part of the typeface.

(More specifically, they may be treated like serifs - or little decorations at the edge of certain lines)

When you are learning kanji, you should definitely not be copying or referencing printed characters. You should learn from hand-written characters. The basics of how to write kanji are not taught or learned from printed or typeface forms.

The best online reference I know of for hand-written Japanese characters is the kakijun website', '2018-04-14 18:18:42',false, true, 19, NULL);
INSERT INTO "bestanswer"(id_bestAnswer,attributionDate,"text" , "date", deleted, active, votes, photo) VALUES(61,'2018-12-03 15:14:57', 'Not in water. Free electron in water is really unfavorable, so no significant concentration of them can be generated chemically, and it almost immediately reduces water itself to hydrogen (but I heard rumors about generation of solvated electrons in water in very special experiment with short half-life)

In liquid NH3, however, solvated electrons can occur, so self-discharge of galvanic cells with NH3-based electrolyte may occur through travel of electrons via electrolyte.', '2018-04-03 07:09:13',false, false, 12, NULL);

-----------------------------------------
--NOTIFICATION
-----------------------------------------
INSERT INTO "notification"(description, type, view, "date", questionTarget, target, creator) VALUES('FateTalk commented on your post', 'comment', false, '2016-05-06 17:28:33', 1, 8,16);
INSERT INTO "notification"(description, type, view, "date", questionTarget, target, creator) VALUES('Orbital upvoted your answer', 'vote', false, '2017-02-08 01:32:18',2, 16,36);
INSERT INTO "notification"(description, type, view, "date", questionTarget, target, creator) VALUES('Chessbeans upvoted your question', 'vote', true, '2017-02-08 12:14:41',3, 28,8);
INSERT INTO "notification"(description, type, view, "date", questionTarget, target, creator) VALUES('Vikingkong upvoted your question', 'vote', true, '2017-02-09 13:25:40',4, 28,14);
INSERT INTO "notification"(description, type, view, "date", questionTarget, target, creator) VALUES('Vikingkong answered your question', 'answer', false, '2017-05-06 13:22:55',5, 35,14);
INSERT INTO "notification"(description, type, view, "date", questionTarget, target, creator) VALUES('FateTalk answered your question', 'answer', false, '2017-02-07 23:36:48',6, 28,16);
INSERT INTO "notification"(description, type, view, "date", questionTarget, target, creator) VALUES('Hexapod started following you', 'follow', true, '2019-01-25 16:27:38',null, 7,26);
INSERT INTO "notification"(description, type, view, "date", questionTarget, target, creator) VALUES('Triangletopic started following you', 'follow', false, '2019-02-15 22:04:35',null, 38,21);


-----------------------------------------
--FAQ
-----------------------------------------
INSERT INTO "faq"(question, answer) VALUES('How does LearnIt work?', 'LearnIt is a Q&A community with an academic setting. Users can ask their own questions and answer questions posted by other people, as well as cast votes on posts in order to verify the quality of the information. You can vote a post positively or negatively, and the question owner can choose one of the answers as the best one. 
              Each question can be set to one of 12 distinct categories: Art, Biology, Business, Chemistry, Geology, History, Linguistics, Math, Medicine, Physics, Psychology and Technology; whose hubs can be freely browsed. 
              There is a permanent search bar on top of most pages with a wide variety of search options to find previously asked questions faster. 
              There are also achievements that an user can win. Try to collect them all and become the ultimate Learner!');			  
INSERT INTO "faq"(question, answer) VALUES('What does my rank mean?', 'Each user has an assigned rank, based on their number of points. As you ask or answer questions, and taking into account how other users rate your questions and answers, you can gain or lose points. 
              Asking or answering a question will give you 1 point. Each positive vote on any of your posts (questions and answers) will also give you 1 point, and each negative vote will take away 1 point. If your answer to a question is voted by the enquirer as the best answer, you will gain 5 points. 
          
              Here is a list of all ranks and their thresholds: 
              
              Rookie - 0 points 
              Beginner - 30 points 
              Intermediate - 100 points 
              Enthusiast - 250 points 
              Advanced - 500 points 
              Veteran - 1000 points ');			  
INSERT INTO "faq"(question, answer) VALUES('What is a trusted user?', 'A trusted user is a user who has greatly contributed to the platform, often posting the best answers and therefore a reliable source of information and knowledge. 
              In order to become a trusted user, at least 90% of your answers must be upvoted and more than 70% need to be classified as best answer. ');			  
INSERT INTO "faq"(question, answer) VALUES('How can I become a moderator?', 'In order for an user to become a moderator, they must be approved by the site administrator, who can also demote a moderator to a regular user. 
              Moderators can manage general aspects of the sites, such as users, questions and answers, as well as review reported content. ');			  
INSERT INTO "faq"(question, answer) VALUES('What happens if I get banned or if I delete my account?', 'If a user often posts inappropriate content, moderators and administrators have the ability to ban them. If this happens, said user will no longer be able to log in, rendering the account useless. 
              Contrarily, if a user decides to delete their account, their profiles will be deleted but their questions and answers will remain. If you wish to delete any of your posts, do so before deleting your account as you will not be able to log in afterwards. ');			  
INSERT INTO "faq"(question, answer) VALUES('Where do I suggest features I would like to see on LearnIt?', 'Simply contact us, using the contact form on the bottom part of any of the pages on the site.  
              User feedback is always appreciated, and will help us to build a stronger platform for our community.');


-----------------------------------------
--REPORT
-----------------------------------------
INSERT INTO "report"("date", reason, id_question, id_answer) VALUES('2019-01-07 11:47:23', 'Commercial or spam', 55, NULL);
INSERT INTO "report"("date", reason, id_question, id_answer) VALUES('2019-01-08 08:42:52', 'Inappropriate or offensive', 57, NULL);
INSERT INTO "report"("date", reason, id_question, id_answer) VALUES('2019-01-08 09:37:31', 'Commercial or spam', NULL, 68);
INSERT INTO "report"("date", reason, id_question, id_answer) VALUES('2019-01-08 11:17:44', 'Inappropriate or offensive', 62, NULL);
INSERT INTO "report"("date", reason, id_question, id_answer) VALUES('2019-01-09 12:43:18', 'Inappropriate or offensive', 59, NULL);
INSERT INTO "report"("date", reason, id_question, id_answer) VALUES('2019-01-09 14:37:05', 'Safety issue or illegal', NULL, 21);
INSERT INTO "report"("date", reason, id_question, id_answer) VALUES('2019-01-09 15:17:26', 'Commercial or spam', NULL, 14);


-----------------------------------------
--USERREPORT
-----------------------------------------
INSERT INTO "userreport"(username, id_report) VALUES(24, 1);
INSERT INTO "userreport"(username, id_report) VALUES(27, 2);
INSERT INTO "userreport"(username, id_report) VALUES(20, 3);
INSERT INTO "userreport"(username, id_report) VALUES(33, 4);
INSERT INTO "userreport"(username, id_report) VALUES(2, 5);
INSERT INTO "userreport"(username, id_report) VALUES(9, 6);
INSERT INTO "userreport"(username, id_report) VALUES(36, 7);