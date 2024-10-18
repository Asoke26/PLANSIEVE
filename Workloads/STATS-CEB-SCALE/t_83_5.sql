SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 297
AND c.CreationDate <= 623
AND v.CreationDate >= 56
AND v.CreationDate <= 772
AND u.CreationDate <= 983

AND u.Id = c.UserId
AND u.Id = v.UserId;