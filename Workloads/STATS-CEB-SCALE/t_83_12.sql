SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 456
AND c.CreationDate <= 1318
AND v.CreationDate >= 9
AND v.CreationDate <= 465
AND u.CreationDate <= 1113

AND u.Id = c.UserId
AND u.Id = v.UserId;