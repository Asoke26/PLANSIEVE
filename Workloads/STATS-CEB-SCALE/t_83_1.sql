SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE c.CreationDate >= 183
AND c.CreationDate <= 835
AND v.CreationDate >= 189
AND v.CreationDate <= 434
AND u.CreationDate <= 979

AND u.Id = c.UserId
AND u.Id = v.UserId;