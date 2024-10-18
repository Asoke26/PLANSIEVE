SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
movie_keyword mk
WHERE mi.info_type_id = 35
AND t.production_year > 1894.0
AND t.production_year < 1941.0

AND t.id = mi.movie_id
AND t.id = mk.movie_id
AND t.id = mc.movie_id;