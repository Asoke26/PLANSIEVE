SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 504
AND c.CreationDate <= 522
AND v.CreationDate >= 1177
AND v.CreationDate <= 1539
AND u.CreationDate <= 456

AND u.Id = c.UserId
AND u.Id = v.UserId;