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
