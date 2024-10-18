SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 1046
AND u.CreationDate >= 945
AND u.CreationDate <= 1340

AND u.Id = c.UserId
AND u.Id = v.UserId;