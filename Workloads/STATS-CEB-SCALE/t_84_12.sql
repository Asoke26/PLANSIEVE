SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1417
AND u.CreationDate >= 454
AND u.CreationDate <= 817

AND u.Id = c.UserId
AND u.Id = v.UserId;