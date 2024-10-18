SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 742
AND u.CreationDate >= 68
AND u.CreationDate <= 1172

AND u.Id = c.UserId
AND u.Id = v.UserId;