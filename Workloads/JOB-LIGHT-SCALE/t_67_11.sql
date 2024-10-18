SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
cast_info ci,
movie_keyword mk
WHERE ci.role_id = 1
AND mi.info_type_id = 42
AND t.production_year > 1924.0
AND t.production_year < 2002.0
AND mk.keyword_id = 34528

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id
AND t.id = mk.movie_id;