SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 51
AND c.CreationDate <= 1368
AND v.CreationDate >= 147
AND v.CreationDate <= 556
AND u.CreationDate <= 86

AND u.Id = c.UserId
AND u.Id = v.UserId;