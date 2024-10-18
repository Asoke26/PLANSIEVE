SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
cast_info ci
WHERE ci.role_id = 9
AND mi.info_type_id = 41

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id;