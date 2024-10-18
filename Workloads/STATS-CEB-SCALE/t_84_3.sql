SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1132
AND u.CreationDate >= 289
AND u.CreationDate <= 450

AND u.Id = c.UserId
AND u.Id = v.UserId;