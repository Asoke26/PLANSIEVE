SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc,
cast_info ci
WHERE ci.role_id=2
AND mi.info_type_id=16

AND t.id = mi.movie_id
AND t.id = mc.movie_id
AND t.id = ci.movie_id;