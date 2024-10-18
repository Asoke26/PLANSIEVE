SELECT COUNT(*)
 FROM title t,
cast_info ci,
movie_companies mc
WHERE t.production_year > 2012.0
AND ci.role_id = 6

AND t.id = mc.movie_id
AND t.id = ci.movie_id;