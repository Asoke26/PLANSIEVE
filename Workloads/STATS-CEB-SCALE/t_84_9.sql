SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1422
AND u.CreationDate >= 235
AND u.CreationDate <= 593

AND u.Id = c.UserId
AND u.Id = v.UserId;