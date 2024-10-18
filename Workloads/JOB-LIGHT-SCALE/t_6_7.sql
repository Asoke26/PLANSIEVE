SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_keyword mk
WHERE t.production_year > 1958.0

AND t.id = mi.movie_id
AND t.id = mk.movie_id;