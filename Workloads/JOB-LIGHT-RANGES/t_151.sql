SELECT COUNT(*)
FROM movie_info mi,movie_keyword mk,title t
WHERE t.imdb_index>='I' AND 
t.phonetic_code<='D353' AND 
t.production_year=2003.0 AND 
mi.info_type_id=106 AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id;