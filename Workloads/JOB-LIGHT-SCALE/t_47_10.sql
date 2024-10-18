SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
cast_info ci
WHERE ci.role_id = 1
AND mi.info_type_id = 12
AND t.production_year > 1964.0
AND t.production_year < 2017.0

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id;