SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
movie_keyword mk
WHERE mi.info_type_id = 75
AND t.production_year > 1969.0
AND t.production_year < 2004.0

AND t.id = mi.movie_id
AND t.id = mk.movie_id
AND t.id = mc.movie_id;