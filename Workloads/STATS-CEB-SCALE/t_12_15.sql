SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 256
AND u.Reputation <= 539
AND c.CreationDate >= 1437

AND u.Id = c.UserId
AND u.Id = v.UserId;