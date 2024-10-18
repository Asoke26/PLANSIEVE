SELECT COUNT(*)
 FROM title t,
cast_info ci,
movie_companies mc
WHERE t.production_year > 1940.0
AND ci.role_id = 9

AND t.id = mc.movie_id
AND t.id = ci.movie_id;