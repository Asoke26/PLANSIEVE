SELECT COUNT(*)
 FROM title t,
movie_keyword mk,
movie_companies mc
WHERE t.production_year > 1988.0

AND t.id = mk.movie_id
AND t.id = mc.movie_id;