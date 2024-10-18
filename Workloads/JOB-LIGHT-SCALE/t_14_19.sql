SELECT COUNT(*)
 FROM movie_keyword mk,
title t,
cast_info ci
WHERE t.production_year > 1929.0
AND mk.keyword_id = 128841

AND t.id = mk.movie_id
AND t.id = ci.movie_id;