--Queries--

-- vai buscar dados do user para o profile

SELECT username, bioDescription, points, profilePhoto, rankType
FROM "user", rank
Where  "user".id_rank=rank.id_rank; 

-- numero de followers 

SELECT COUNT (*) as number_of_followers
FROM follow INNER JOIN "user" ON follow.following ="user".id_user;

-- numero de following