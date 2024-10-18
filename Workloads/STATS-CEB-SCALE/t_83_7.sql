SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 1295
AND c.CreationDate <= 1491
AND v.CreationDate >= 486
AND v.CreationDate <= 667
AND u.CreationDate <= 1090

AND u.Id = c.UserId
AND u.Id = v.UserId;