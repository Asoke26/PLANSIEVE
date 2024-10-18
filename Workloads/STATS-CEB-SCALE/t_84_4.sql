SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1432
AND u.CreationDate >= 71
AND u.CreationDate <= 328

AND u.Id = c.UserId
AND u.Id = v.UserId;