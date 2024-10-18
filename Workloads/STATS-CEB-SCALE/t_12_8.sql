SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 86
AND u.Reputation <= 242
AND c.CreationDate >= 263

AND u.Id = c.UserId
AND u.Id = v.UserId;