SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 408
AND u.CreationDate >= 217
AND u.CreationDate <= 424

AND u.Id = c.UserId
AND u.Id = v.UserId;