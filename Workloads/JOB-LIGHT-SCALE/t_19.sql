SELECT COUNT(*)
 FROM cast_info ci,
title t
WHERE t.production_year>1980
AND t.production_year<1995

AND t.id = ci.movie_id;