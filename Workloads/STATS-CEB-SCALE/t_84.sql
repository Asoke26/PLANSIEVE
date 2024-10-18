SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate<=1542
AND u.CreationDate>=27
AND u.CreationDate<=1478

AND u.Id = c.UserId
AND u.Id = v.UserId;