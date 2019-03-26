INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (1,"Infectedsea", "tahcgvd13", "infectedsea166@gmail.com", "photography lover", "1980-05-17", "photo1.png", 120, false, false, "" );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (2, "Avocadoroxy", "hsfid28", "avocadoroxy@Hi.com","just learning things..", "1993-02-07", "user12.png", 530, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (3, "Pepperliving","auyd45", "pepper&salt@yahoo.com", "quantum physicist", "1997-03-20", "user3.png", 100, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (4, "Unlinedminiature", "aihcf5163", "creaturesss12@sapo.com", "admirer of nature", "2000-08-30", "user4.png", 210, false, false, "" );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (5, "Activisthaiku", "hskhu78", "activist178@gmail.com", "getting smarter", "1998-02-17", "photo1.png", 300, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (6, "Flycommon","pli123", "flyingbird@io.org", null, "1975-02-17",null, 330, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (7, "Moonshadows", "poiuy1234","moonlight@mimi.com", "engineering master", "1965-02-17", null, 30, false, false, "" );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (8, "Chessbeans", "mnbv67", "chessLover@beans.com", "simplicity is prerequisite for reliability", "2000-02-17", , "photo12.png", 209, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (9, "Luminous",".1.2.3.a.b.c", "lumi123@gamil.com", null, "1957-02-17", , "photo49.png", 205, false, false, "" );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (10, "Pizzazz","osjd123", "pizzaAndChips@yahoo.com", "coffee and pizza! ", "1993-02-17", "olght.png", 520, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (11, "Pantaloons","ju1we2-06", "sleepingsheep@hotmail.com", "always tired..", "1999-02-17", null, 400, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (12, "Sparky", "#jsdy", "sparkytube@sapo.com", null, "1996-02-17", "pho.png", 100, true, false, ""   );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (13, "Cooper", "6h7sdBB", "doccooper@un02.com", null, "1888-02-17","photott.png", 600, false, true, ""   );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (14, "Vikingkong", "poife17_", "vikingargh@hotmail.com", "we are made by history", "2017-02-17", "photo45.png", 50, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (15, "FieryBoy", "zxc&+12", "fieryboy123@piripiri.com", "Mathssssssss", "2002-02-17", "photo98.png", 320, false, false, ""   );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (16, "FateTalk", "AbAb45", "sadfate98@gmail.com", "anti-social behaviour is a trait of intelligence in a world full of conformists", "1984-09-17", "photo1.png", 500, false, false, ""  );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (17, "LittleRoses","jsoud0987", "blueroses@gmail.com", null, "2005-06-28", "photooo.png", 40, false, false, ""  );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (18, "RainbowRecipe","kvsy986", "diamondspot@oreo.org", null, "1974-02-17", null, 300, false, false, "" );
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (19, "YoungerDivision","agsd12%p", "divisionbell@yahoo.com", "music is life", "1981-02-10", "photo1.png", 120, false, false, "");
INSERT INTO "user" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES (20,"HappyCat","alduyf123", "catskittens@pic.com", "looking for inspiration", "2001-12-05", "photo5.png", 200, false, false, "" );


INSERT INTO "follow"(follower, following) VALUES();

INSERT INTO "role"(id_role, type, beginningDate, endDate) VALUES();

INSERT INTO "notification"(id_notification, description, type, view, "date", id_user) VALUES();

INSERT INTO "category"(id_category, name) VALUES();

INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES();

INSERT INTO "voteQuestion"(username, id_question) VALUES();

INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();

INSERT INTO "voteAnswer"(username, id_answer) VALUES();

INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES();

INSERT INTO "bestAnswer"(id_bestAnswer, attributionDate, "text", "date", deleted, active, votes, photo) VALUES();

INSERT INTO "faq"(id_faq, question, answer) VALUES();

INSERT INTO "report"(id_report, "date", reason, id_question, id_answer) VALUES();

INSERT INTO "userReport"(username, id_report) VALUES();
