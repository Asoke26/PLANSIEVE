SELECT COUNT(*)
 FROM movie_companies mc,
title t,
movie_info_idx mi_idx
WHERE mi_idx.info_type_id = 100
AND mc.company_type_id = 2
AND t.production_year > 1929.0

AND t.id = mc.movie_id
AND t.id = mi_idx.movie_id;