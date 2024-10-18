SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1506
AND u.CreationDate >= 1043
AND u.CreationDate <= 1289

AND u.Id = c.UserId
AND u.Id = v.UserId;