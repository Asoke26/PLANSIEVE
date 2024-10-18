SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
cast_info ci,
movie_keyword mk
WHERE ci.role_id = 6
AND mi.info_type_id = 103
AND t.production_year > 1923.0
AND t.production_year < 2010.0
AND mk.keyword_id = 75332

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id
AND t.id = mk.movie_id;