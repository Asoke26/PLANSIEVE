SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1425
AND u.CreationDate >= 55
AND u.CreationDate <= 988

AND u.Id = c.UserId
AND u.Id = v.UserId;