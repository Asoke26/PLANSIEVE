SELECT COUNT(*)
 FROM movie_companies mc,
title t,
movie_keyword mk
WHERE mk.keyword_id = 104379

AND t.id = mc.movie_id
AND t.id = mk.movie_id;