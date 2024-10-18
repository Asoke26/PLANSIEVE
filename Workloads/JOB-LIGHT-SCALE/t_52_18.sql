SELECT COUNT(*)
 FROM title t,
movie_keyword mk,
movie_companies mc,
movie_info mi
WHERE mk.keyword_id = 39002
AND mc.company_type_id = 1
AND t.production_year > 1954.0
AND t.production_year < 1996.0

AND t.id = mk.movie_id
AND t.id = mc.movie_id
AND t.id = mi.movie_id;