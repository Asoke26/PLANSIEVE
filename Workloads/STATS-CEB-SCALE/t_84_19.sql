SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 80
AND u.CreationDate >= 66
AND u.CreationDate <= 159

AND u.Id = c.UserId
AND u.Id = v.UserId;