SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 352
AND c.CreationDate <= 1023
AND v.CreationDate >= 370
AND v.CreationDate <= 1030
AND u.CreationDate <= 751

AND u.Id = c.UserId
AND u.Id = v.UserId;