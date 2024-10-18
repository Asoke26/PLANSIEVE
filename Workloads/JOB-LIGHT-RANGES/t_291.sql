SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.production_year>=1997.0 AND 
t.kind_id=1 AND 
t.phonetic_code<='G6215' AND 
mk.keyword_id=11559 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;