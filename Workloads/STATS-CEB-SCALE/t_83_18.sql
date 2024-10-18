SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 1104
AND c.CreationDate <= 1538
AND v.CreationDate >= 640
AND v.CreationDate <= 1300
AND u.CreationDate <= 1503

AND u.Id = c.UserId
AND u.Id = v.UserId;