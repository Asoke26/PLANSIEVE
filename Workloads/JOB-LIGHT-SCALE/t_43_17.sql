SELECT COUNT(*)
 FROM cast_info ci,
title t,
movie_keyword mk,
movie_companies mc
WHERE mk.keyword_id = 120419

AND t.id = ci.movie_id
AND t.id = mk.movie_id
AND t.id = mc.movie_id;