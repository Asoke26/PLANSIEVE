SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1131
AND u.CreationDate >= 563
AND u.CreationDate <= 1153

AND u.Id = c.UserId
AND u.Id = v.UserId;