SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 318
AND u.Reputation <= 935
AND c.CreationDate >= 484

AND u.Id = c.UserId
AND u.Id = v.UserId;