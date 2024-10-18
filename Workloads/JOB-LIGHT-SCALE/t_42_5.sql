SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
movie_keyword mk
WHERE mi.info_type_id = 63
AND t.production_year > 1978.0

AND t.id = mi.movie_id
AND t.id = mk.movie_id
AND t.id = mc.movie_id;