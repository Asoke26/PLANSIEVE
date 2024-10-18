SELECT COUNT(*)
 FROM title t,
movie_info mi,
movie_companies mc
WHERE t.production_year > 1981.0
AND mc.company_type_id = 2

AND t.id = mi.movie_id
AND t.id = mc.movie_id;