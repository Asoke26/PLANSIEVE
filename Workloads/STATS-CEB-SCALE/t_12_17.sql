SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 213
AND u.Reputation <= 265
AND c.CreationDate >= 1256

AND u.Id = c.UserId
AND u.Id = v.UserId;