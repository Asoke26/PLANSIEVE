SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 37
AND u.Reputation <= 365
AND c.CreationDate >= 929

AND u.Id = c.UserId
AND u.Id = v.UserId;