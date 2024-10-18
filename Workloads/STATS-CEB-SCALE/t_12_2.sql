SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 531
AND u.Reputation <= 5564
AND c.CreationDate >= 1401

AND u.Id = c.UserId
AND u.Id = v.UserId;