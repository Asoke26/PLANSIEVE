SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
movie_keyword mk
WHERE mi.info_type_id = 91
AND t.production_year > 1933.0
AND t.production_year < 1935.0

AND t.id = mi.movie_id
AND t.id = mk.movie_id
AND t.id = mc.movie_id;