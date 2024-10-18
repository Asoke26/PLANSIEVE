SELECT COUNT(*)
FROM cast_info ci,movie_info mi,movie_info_idx mi_idx,movie_keyword mk,title t
WHERE mi_idx.info_type_id=99 AND 
t.imdb_index>='I' AND 
mk.keyword_id=1582 AND 
t.production_year>=2009.0 AND 
t.kind_id=1 AND 
ci.role_id=10 AND 

t.id = mi.movie_id AND 
t.id = mi_idx.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;