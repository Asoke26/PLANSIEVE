SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mk.keyword_id=1116 AND 
t.kind_id=2 AND 
t.phonetic_code='S3636' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;