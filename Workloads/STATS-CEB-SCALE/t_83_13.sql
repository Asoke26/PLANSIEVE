SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 766
AND c.CreationDate <= 1240
AND v.CreationDate >= 318
AND v.CreationDate <= 477
AND u.CreationDate <= 979

AND u.Id = c.UserId
AND u.Id = v.UserId;