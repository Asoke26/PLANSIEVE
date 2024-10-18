SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.production_year=2010.0 AND 
t.phonetic_code<='S43' AND 
mk.keyword_id=1116 AND 
t.kind_id=1 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;