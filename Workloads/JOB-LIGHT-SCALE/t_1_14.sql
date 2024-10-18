SELECT COUNT(*)
 FROM movie_companies mc,
title t,
movie_info_idx mi_idx
WHERE mi_idx.info_type_id = 113
AND mc.company_type_id = 2
AND t.production_year > 1945.0
AND t.production_year < 1992.0

AND t.id = mc.movie_id
AND t.id = mi_idx.movie_id;