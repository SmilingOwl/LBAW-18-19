INSERT INTO "user1" (id_user, username, password, email, bioDescription, birthdate, profilePhoto, points, banned, deleted, id_role) VALUES ();

INSERT INTO "follow"(follower, following) VALUES();

INSERT INTO "role"(id_role, type, beginningDate, endDate) VALUES();

INSERT INTO "notification"(id_notification, description, type, view, "date", id_user) VALUES();

INSERT INTO "category"(id_category, name) VALUES(1, "art");
INSERT INTO "category"(id_category, name) VALUES(2, "biology");
INSERT INTO "category"(id_category, name) VALUES(3, "business");
INSERT INTO "category"(id_category, name) VALUES(4, "chemistry");
INSERT INTO "category"(id_category, name) VALUES(5, "geology");
INSERT INTO "category"(id_category, name) VALUES(6, "history");
INSERT INTO "category"(id_category, name) VALUES(7, "math");
INSERT INTO "category"(id_category, name) VALUES(8, "health");
INSERT INTO "category"(id_category, name) VALUES(9, "linguistics");
INSERT INTO "category"(id_category, name) VALUES(10, "physics");
INSERT INTO "category"(id_category, name) VALUES(11, "psychology");
INSERT INTO "category"(id_category, name) VALUES(12, "technology");


INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(1, );

INSERT INTO "voteQuestion"(username, id_question) VALUES();

INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();

INSERT INTO "voteAnswer"(username, id_answer) VALUES();

INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES();

INSERT INTO "bestAnswer"(id_bestAnswer, attributionDate, "text", "date", deleted, active, votes, photo) VALUES();

INSERT INTO "faq"(id_faq, question, answer) VALUES();

INSERT INTO "report"(id_report, "date", reason, id_question, id_answer) VALUES();

INSERT INTO "userReport"(username, id_report) VALUES();
