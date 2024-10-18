SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE mi.info_type_id=15 AND 
t.phonetic_code<='O5215' AND 
mk.keyword_id=115818 AND 
t.kind_id=1 AND 
t.production_year>=2003.0 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;