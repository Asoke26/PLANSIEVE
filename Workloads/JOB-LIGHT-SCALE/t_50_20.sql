SELECT COUNT(*)
 FROM title t,
cast_info ci,
movie_keyword mk
WHERE t.production_year > 1962.0
AND t.kind_id = 3

AND t.id = mk.movie_id
AND t.id = ci.movie_id;