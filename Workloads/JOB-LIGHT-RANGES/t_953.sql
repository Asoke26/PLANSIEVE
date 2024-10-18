SELECT COUNT(*)
FROM cast_info ci,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mk.keyword_id=14537 AND 
mi_idx.info_type_id=99 AND 
ci.nr_order=26.0 AND 
t.phonetic_code<='G3523' AND 
t.production_year=1958.0 AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id AND 
t.id = mi_idx.movie_id;