SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE ci.nr_order<=101.0 AND 
mk.keyword_id=1969 AND 
t.production_year=2013.0 AND 
mi_idx.info_type_id=100 AND 
t.phonetic_code<='I65' AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;