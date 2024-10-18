SELECT COUNT(*)
 FROM title t,
movie_keyword mk,
movie_companies mc
WHERE mk.keyword_id = 83946
AND mc.company_type_id = 1
AND t.production_year > 1913.0
AND t.production_year < 2017.0

AND t.id = mk.movie_id
AND t.id = mc.movie_id;