SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 852
AND u.Reputation <= 1530
AND c.CreationDate >= 815

AND u.Id = c.UserId
AND u.Id = v.UserId;