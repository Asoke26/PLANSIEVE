SELECT COUNT(*)
FROM cast_info ci,movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE ci.role_id=3 AND 
mk.keyword_id=851 AND 
t.kind_id=2 AND 
mi.info_type_id=3 AND 
mc.company_type_id=1 AND 
t.series_years<='2004-????' AND 

t.id = mi.movie_id AND 
t.id = mc.movie_id AND 
t.id = ci.movie_id AND 
t.id = mk.movie_id;