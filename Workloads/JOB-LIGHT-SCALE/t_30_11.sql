SELECT COUNT(*)
 FROM title t,
movie_keyword mk,
movie_companies mc
WHERE mk.keyword_id = 29052
AND mc.company_type_id = 1
AND t.production_year > 1920.0
AND t.production_year < 1952.0

AND t.id = mk.movie_id
AND t.id = mc.movie_id;