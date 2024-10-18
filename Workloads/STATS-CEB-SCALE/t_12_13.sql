SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 224
AND u.Reputation <= 1058
AND c.CreationDate >= 73

AND u.Id = c.UserId
AND u.Id = v.UserId;