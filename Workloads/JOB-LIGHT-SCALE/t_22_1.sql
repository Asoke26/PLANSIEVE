SELECT COUNT(*)
 FROM cast_info ci,
title t,
movie_companies mc
WHERE ci.role_id = 10

AND t.id = ci.movie_id
AND t.id = mc.movie_id;