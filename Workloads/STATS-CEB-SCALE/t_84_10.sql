SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 465
AND u.CreationDate >= 163
AND u.CreationDate <= 1438

AND u.Id = c.UserId
AND u.Id = v.UserId;