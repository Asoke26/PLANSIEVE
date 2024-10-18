SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 102
AND u.Reputation <= 198
AND c.CreationDate >= 1310

AND u.Id = c.UserId
AND u.Id = v.UserId;