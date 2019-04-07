-----------------------------------------
--INDEXES ON MOST USED TABLES
-----------------------------------------


CREATE INDEX usernames ON "user" USING hash (username);

CREATE INDEX answers ON "answer" USING hash (id_question);

CREATE INDEX question_date ON "question" USING btree ("date");

CREATE INDEX search_idx ON "question" USING GIST (search);