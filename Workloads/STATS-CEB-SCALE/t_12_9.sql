SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 395
AND u.Reputation <= 506
AND c.CreationDate >= 911

AND u.Id = c.UserId
AND u.Id = v.UserId;