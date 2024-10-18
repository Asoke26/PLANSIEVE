SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 177
AND u.Reputation <= 937
AND c.CreationDate >= 338

AND u.Id = c.UserId
AND u.Id = v.UserId;