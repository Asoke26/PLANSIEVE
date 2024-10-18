SELECT COUNT(*)
 FROM title t,
cast_info ci,
movie_companies mc
WHERE t.production_year > 1961.0

AND t.id = mc.movie_id
AND t.id = ci.movie_id;