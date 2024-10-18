SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 893
AND c.CreationDate <= 1395
AND v.CreationDate >= 432
AND v.CreationDate <= 1413
AND u.CreationDate <= 396

AND u.Id = c.UserId
AND u.Id = v.UserId;