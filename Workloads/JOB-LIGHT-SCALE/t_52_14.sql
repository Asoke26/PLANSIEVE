SELECT COUNT(*)
 FROM title t,
movie_keyword mk,
movie_companies mc,
movie_info mi
WHERE mk.keyword_id = 83066
AND mc.company_type_id = 2
AND t.production_year > 1976.0
AND t.production_year < 1978.0

AND t.id = mk.movie_id
AND t.id = mc.movie_id
AND t.id = mi.movie_id;