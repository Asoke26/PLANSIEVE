SELECT COUNT(*)
 FROM cast_info ci,
title t,
movie_companies mc
WHERE t.production_year > 1940.0
AND t.production_year < 1981.0
AND ci.role_id = 6

AND t.id = ci.movie_id
AND t.id = mc.movie_id;