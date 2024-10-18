SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 900
AND u.CreationDate >= 103
AND u.CreationDate <= 1396

AND u.Id = c.UserId
AND u.Id = v.UserId;