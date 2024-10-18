SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 13
AND u.Reputation <= 374
AND c.CreationDate >= 1482

AND u.Id = c.UserId
AND u.Id = v.UserId;