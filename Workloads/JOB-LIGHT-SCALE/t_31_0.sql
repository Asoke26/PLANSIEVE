SELECT COUNT(*)
 FROM title t,
movie_keyword mk,
movie_companies mc
WHERE mk.keyword_id = 5013
AND mc.company_type_id = 1

AND t.id = mk.movie_id
AND t.id = mc.movie_id;