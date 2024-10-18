SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 307
AND u.Reputation <= 343
AND c.CreationDate >= 381

AND u.Id = c.UserId
AND u.Id = v.UserId;