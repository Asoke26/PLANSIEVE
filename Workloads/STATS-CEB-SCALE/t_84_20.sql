SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 955
AND u.CreationDate >= 471
AND u.CreationDate <= 727

AND u.Id = c.UserId
AND u.Id = v.UserId;