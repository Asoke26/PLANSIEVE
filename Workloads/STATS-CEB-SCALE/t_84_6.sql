SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1351
AND u.CreationDate >= 405
AND u.CreationDate <= 932

AND u.Id = c.UserId
AND u.Id = v.UserId;