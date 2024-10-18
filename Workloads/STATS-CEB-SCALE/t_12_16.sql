SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 284
AND u.Reputation <= 511
AND c.CreationDate >= 784

AND u.Id = c.UserId
AND u.Id = v.UserId;