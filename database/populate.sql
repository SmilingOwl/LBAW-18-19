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


INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(30, 'psychology', '', null, '2017-11-16 11:41:48' , 15, null, false, 2);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(31, 'psychology', '', null, '2017-11-05 15:22:04' , 1, null, false, 1);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(32, 'geology', '', null, '2016-11-05 02:55:10' , 18, null, false, 25);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(33, 'geology', '', null, '2017-02-04 22:58:52' , 7, null, false, 13);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(34, 'biology', '', null, '2018-02-04 12:08:41' , 5, null, false, 16);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(35, 'biology', '', null, '2018-01-11 14:46:12' , 11, null, false, 28);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(36, 'art', '', null, '2017-03-10 22:05:47' , 2, null, false, 4);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(37, 'art', '', null, '2017-01-16 23:34:23' , 3, null, false, 22);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(38, 'history', '', null, '2017-01-16 16:24:01' , 10, null, false, 9);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(39, 'history', '', null, '2018-01-11 09:13:10' , 4, null, false, 12);
INSERT INTO "question"(id_question, name, title, description, "date", votes, photo, deleted, id_user) VALUES(40, 'linguistics', '', null, '2016-11-07 22:53:19' , 16, null, false, 11);





INSERT INTO "voteQuestion"(username, id_question) VALUES();

INSERT INTO "answer"(id_answer, "text","date", votes, photo, deleted, id_question, user_post) VALUES();

INSERT INTO "voteAnswer"(username, id_answer) VALUES();

INSERT INTO "comment"(firstAnswer, secondAnswer) VALUES();

INSERT INTO "bestAnswer"(id_bestAnswer, attributionDate, "text", "date", deleted, active, votes, photo) VALUES();

INSERT INTO "faq"(id_faq, question, answer) VALUES(1, 'How does LearnIt work?', 'LearnIt is a Q&A community with an academic setting. Users can ask their own questions and answer questions posted by other people, as well as cast votes on posts in order to verify the quality of the information. You can vote a post positively or negatively, and the question owner can choose one of the answers as the best one. <br>
              Each question can be set to one of 12 distinct categories: Art, Biology, Business, Chemistry, Geology, History, Linguistics, Math, Medicine, Physics, Psychology and Technology; whose hubs can be freely browsed. <br>
              There is a permanent search bar on top of most pages with a wide variety of search options to find previously asked questions faster. <br>
              There are also achievements that an user can win. Try to collect them all and become the ultimate Learner!');
			  
INSERT INTO "faq"(id_faq, question, answer) VALUES(2, 'What does my rank mean?', 'Each user has an assigned rank, based on their number of points. As you ask or answer questions, and taking into account how other users rate your questions and answers, you can gain or lose points. <br>
              Asking or answering a question will give you 1 point. Each positive vote on any of your posts (questions and answers) will also give you 1 point, and each negative vote will take away 1 point. If your answer to a question is voted by the enquirer as the best answer, you will gain 5 points. <br>
          
              Here is a list of all ranks and their thresholds: <br>
              <br>
              Rookie - 0 points <br>
              Beginner - 30 points <br>
              Intermediate - 100 points <br>
              Enthusiast - 250 points <br>
              Advanced - 500 points <br>
              Veteran - 1000 points <br>');
			  
INSERT INTO "faq"(id_faq, question, answer) VALUES(3, 'What is a trusted user?', 'A trusted user is a user who has greatly contributed to the platform, often posting the best answers and therefore a reliable source of information and knowledge. <br>
              In order to become a trusted user, at least 90% of your answers must be upvoted and more than 70% need to be classified as best answer. <br>');			  

INSERT INTO "faq"(id_faq, question, answer) VALUES(4, 'How can I become a moderator?', 'In order for an user to become a moderator, they must be approved by the site administrator, who can also demote a moderator to a regular user. <br>
              Moderators can manage general aspects of the sites, such as users, questions and answers, as well as review reported content. <br>');			  

INSERT INTO "faq"(id_faq, question, answer) VALUES(5, 'What happens if I get banned or if I delete my account?', 'If a user often posts inappropriate content, moderators and administrators have the ability to ban them. If this happens, said user will no longer be able to log in, rendering the account useless. <br>
              Contrarily, if a user decides to delete their account, their profiles will be deleted but their questions and answers will remain. If you wish to delete any of your posts, do so before deleting your account as you will not be able to log in afterwards. <br>');			  

INSERT INTO "faq"(id_faq, question, answer) VALUES(6, 'Where do I suggest features I would like to see on LearnIt?', 'Simply contact us, using the contact form on the bottom part of any of the pages on the site.  <br>
              User feedback is always appreciated, and will help us to build a stronger platform for our community.');

INSERT INTO "report"(id_report, "date", reason, id_question, id_answer) VALUES();

INSERT INTO "userReport"(username, id_report) VALUES();
