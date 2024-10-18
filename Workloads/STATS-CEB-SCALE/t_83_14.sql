SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 639
AND c.CreationDate <= 1009
AND v.CreationDate >= 376
AND v.CreationDate <= 1062
AND u.CreationDate <= 112

AND u.Id = c.UserId
AND u.Id = v.UserId;