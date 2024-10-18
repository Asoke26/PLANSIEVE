SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 47
AND c.CreationDate <= 573
AND v.CreationDate >= 12
AND v.CreationDate <= 1245
AND u.CreationDate <= 1284

AND u.Id = c.UserId
AND u.Id = v.UserId;