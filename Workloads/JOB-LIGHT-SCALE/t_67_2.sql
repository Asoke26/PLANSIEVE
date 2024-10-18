SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
cast_info ci,
movie_keyword mk
WHERE ci.role_id = 9
AND mi.info_type_id = 66
AND t.production_year > 1950.0
AND t.production_year < 1997.0
AND mk.keyword_id = 40542

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id
AND t.id = mk.movie_id;