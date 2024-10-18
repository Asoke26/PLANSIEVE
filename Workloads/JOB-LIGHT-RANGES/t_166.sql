SELECT COUNT(*)
FROM movie_info_idx mi_idx,movie_keyword mk,title t
WHERE t.episode_nr<=4.0 AND 
t.phonetic_code<='S4232' AND 
mk.keyword_id=33390 AND 
t.kind_id=7 AND 

t.id = mi_idx.movie_id AND 
t.id = mk.movie_id;