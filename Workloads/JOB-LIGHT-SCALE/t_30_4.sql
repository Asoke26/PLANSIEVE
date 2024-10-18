SELECT COUNT(*)
 FROM title t,
movie_keyword mk,
movie_companies mc
WHERE mk.keyword_id = 90821
AND mc.company_type_id = 2
AND t.production_year > 1929.0
AND t.production_year < 2013.0

AND t.id = mk.movie_id
AND t.id = mc.movie_id;