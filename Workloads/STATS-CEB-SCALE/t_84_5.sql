SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1379
AND u.CreationDate >= 28
AND u.CreationDate <= 732

AND u.Id = c.UserId
AND u.Id = v.UserId;