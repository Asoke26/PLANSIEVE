SELECT COUNT(*)
 FROM title t,
cast_info ci,
movie_keyword mk
WHERE t.production_year > 1922.0
AND t.kind_id = 7

AND t.id = mk.movie_id
AND t.id = ci.movie_id;