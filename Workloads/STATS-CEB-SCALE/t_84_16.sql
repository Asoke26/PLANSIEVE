SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE v.CreationDate <= 397
AND u.CreationDate >= 146
AND u.CreationDate <= 1080

AND u.Id = c.UserId
AND u.Id = v.UserId;