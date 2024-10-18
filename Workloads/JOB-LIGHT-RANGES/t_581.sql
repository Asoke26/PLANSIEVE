SELECT COUNT(*)
FROM movie_companies mc,movie_info mi,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
mk.keyword_id=28886 AND 
mc.company_type_id=1 AND 
t.production_year>=1970.0 AND 
mi.info_type_id=107 AND 
t.phonetic_code='Z1621' AND 

t.id = mi.movie_id AND 
t.id = mk.movie_id AND 
t.id = mc.movie_id;