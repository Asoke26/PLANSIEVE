SELECT COUNT(*)
FROM cast_info ci,movie_keyword mk,title t
WHERE t.production_year>=2007.0 AND 
t.season_nr<=4.0 AND 
mk.keyword_id=19835 AND 

t.id = mk.movie_id AND 
t.id = ci.movie_id;