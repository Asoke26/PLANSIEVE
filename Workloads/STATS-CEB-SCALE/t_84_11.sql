SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1299
AND u.CreationDate >= 512
AND u.CreationDate <= 1348

AND u.Id = c.UserId
AND u.Id = v.UserId;