SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 319
AND c.CreationDate <= 1540
AND v.CreationDate >= 348
AND v.CreationDate <= 448
AND u.CreationDate <= 1082

AND u.Id = c.UserId
AND u.Id = v.UserId;