SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 167
AND u.Reputation <= 300
AND c.CreationDate >= 1418

AND u.Id = c.UserId
AND u.Id = v.UserId;