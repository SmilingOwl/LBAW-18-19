--INDEXES ON MOST USED TABLES

--SELECT01 (user profile) , HIGH CARDINALITY, NO CLUSTERING

CREATE INDEX usernames ON "user" USING hash (username);
--email já tem index porque é um unique key

--SELECT09 (quesTion details), MEDIUM CARDINALITY, CLUSTERING

--CREATE INDEX details ON "question" USING hash (id_user); 
--o select09 esta a procurar id_user noutra tabela e não em question
--as primary keys das tabelas já tem index automatico do postgre

--SELECT10 (question answers), MEDIUM CARDINALITY, CLUSTERING

CREATE INDEX answers ON "answer" USING hash (id_question);

--SELECT13 (question by date), LOW CARDINALITY, NO CLUSTERING

CREATE INDEX question_date ON "question" USING btree ("date");

--SELECT14 (comments), MEDIUM CARDINALITY, CLUSTERING

--CREATE INDEX comments ON "comment" USING hash (firstAnswer);
--Já tem index nas 2 chaves primarias. Index automatico do postgre

--GiST because it's better for dynamic data.
CREATE INDEX search_idx ON "question" USING GIST (search);