SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 338
AND u.CreationDate >= 305
AND u.CreationDate <= 813

AND u.Id = c.UserId
AND u.Id = v.UserId;