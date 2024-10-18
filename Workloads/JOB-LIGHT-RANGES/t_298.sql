SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE ci.nr_order>=16.0 AND 
t.kind_id=1 AND 
t.phonetic_code<='C6142' AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;