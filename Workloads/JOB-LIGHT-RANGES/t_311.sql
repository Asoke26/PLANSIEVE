SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.kind_id=1 AND 
t.phonetic_code<='A1635' AND 
mk.keyword_id=33692 AND 
t.production_year=1960.0 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;