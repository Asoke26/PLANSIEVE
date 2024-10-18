SELECT COUNT(*)
FROM movie_companies mc,movie_keyword mk,title t
WHERE mk.keyword_id=19307 AND 
t.kind_id=2 AND 
t.production_year=2006.0 AND 
t.phonetic_code>='Y5353' AND 
t.series_years>='2006-2007' AND 
mc.company_type_id=2 AND 

t.id = mc.movie_id AND 
t.id = mk.movie_id;