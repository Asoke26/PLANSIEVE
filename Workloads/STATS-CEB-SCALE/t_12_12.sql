SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 549
AND u.Reputation <= 750
AND c.CreationDate >= 841

AND u.Id = c.UserId
AND u.Id = v.UserId;