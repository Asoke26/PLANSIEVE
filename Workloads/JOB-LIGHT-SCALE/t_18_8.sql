SELECT COUNT(*)
 FROM movie_keyword mk,
title t,
cast_info ci
WHERE t.production_year > 2013.0

AND t.id = mk.movie_id
AND t.id = ci.movie_id;