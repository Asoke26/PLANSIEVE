SELECT COUNT(*)
 FROM movie_keyword mk,
title t,
cast_info ci
WHERE t.production_year > 1914.0
AND mk.keyword_id = 116676

AND t.id = mk.movie_id
AND t.id = ci.movie_id;