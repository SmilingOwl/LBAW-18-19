
--GiST because it's better for dynamic data.
CREATE INDEX search_idx ON question USING GIST (search);