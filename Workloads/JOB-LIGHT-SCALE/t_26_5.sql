SELECT COUNT(*)
 FROM cast_info ci,
title t,
movie_companies mc
WHERE t.production_year > 1893.0
AND t.production_year < 1963.0
AND ci.role_id = 2

AND t.id = ci.movie_id
AND t.id = mc.movie_id;