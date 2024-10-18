SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=3 AND 
t.kind_id=1 AND 
t.phonetic_code<='V6232' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;