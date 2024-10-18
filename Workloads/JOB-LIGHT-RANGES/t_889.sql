SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi.info_type_id=107 AND 
t.phonetic_code>='C232' AND 
mk.keyword_id=16870 AND 
ci.role_id=1 AND 
t.production_year=2002.0 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;