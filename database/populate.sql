INSERT INTO "user1" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES ();

INSERT INTO "follow"(follower, following) VALUES();

INSERT INTO "role"(id_role, type, beginningDate, endDate) VALUES();

INSERT INTO "notification"(id_notification, description, type, view, "date", id_user) VALUES();

INSERT INTO "category"(id_category, name) VALUES(1, 'art');
INSERT INTO "category"(id_category, name) VALUES(2, 'biology');
INSERT INTO "category"(id_category, name) VALUES(3, 'business');
INSERT INTO "category"(id_category, name) VALUES(4, 'chemistry');
INSERT INTO "category"(id_category, name) VALUES(5, 'geology');
INSERT INTO "category"(id_category, name) VALUES(6, 'history');
INSERT INTO "category"(id_category, name) VALUES(7, 'math');
INSERT INTO "category"(id_category, name) VALUES(8, 'medicine');
INSERT INTO "category"(id_category, name) VALUES(9, 'linguistics');
INSERT INTO "category"(id_category, name) VALUES(10, 'physics');
INSERT INTO "category"(id_category, name) VALUES(11, 'psychology');
INSERT INTO "category"(id_category, name) VALUES(12, 'technology');


INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(1, 'math', 'Tyesha found that the z-statistic was 2.1 and that the critical z-values were -1.96 and 1.96. Which of the following is a valid conclusion based on these results?', 'One can reject the null hypothesis. One can reject the alternate hypothesis. One can accept the null hypothesis. One cannot accept or reject the null hypothesis.','2017-05-06 16:18:36' , 6, null, false, 5);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(2, 'math', 'What are the solutions to this equation?', null,'2017-05-06 16:18:36' , 2, 'img1.jpg', false, 8);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(3, 'technology', 'What are the best C++ books?', null,'2017-01-10 16:35:44', 30, null, false, 9);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(5, 'medicine', 'What CBRNE agent inhibits the enzyme AChE allowing ACh to accumulate affecting the way cells transmit signals to the body?', 'I cannot find anything on my textbooks.', '2016-07-07 06:05:00' , 10, null, false, 3);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(6, 'physics', 'Based on the second law of thermodynamics why must a machine always be less than 100% efficient?', 'A.Heat never moves from cold to hot. B.Heat is never converted completely into mechanical energy. C.Heat never flows from hot to cold. D.Entropy never increases.','2018-01-30 15:08:23' , 2, null, false, 4);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(7, 'physics', 'What is the electrostatic potential energy of an electron that is .02 meters from a Van de Graaff machine that has a negative charge of -4.0 Couloumbs?', null,'2017-09-19 19:46:44' , 0, null, false, 12);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(8, 'chemistry', 'How many grams of silver chloride are produced when 45 g of calcium chloride react with excess silver nitrate?​', null ,'2017-06-01 08:44:35', 7, null, false, 22);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(9, 'linguistics', 'Why do the five basic questions in the English language (what, why, when, who and where) all start with the letter “w”?', null, '2017-12-19 05:52:53', 15, null, false, 19);




INSERT INTO "voteQuestion"(username, id_question) VALUES();

INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();

INSERT INTO "voteAnswer"(username, id_answer) VALUES();

INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES();

INSERT INTO "bestAnswer"(id_bestAnswer, attributionDate, "text", "date", deleted, active, votes, photo) VALUES();

INSERT INTO "faq"(id_faq, question, answer) VALUES();

INSERT INTO "report"(id_report, "date", reason, id_question, id_answer) VALUES();

INSERT INTO "userReport"(username, id_report) VALUES();
