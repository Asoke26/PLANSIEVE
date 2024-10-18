SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 335
AND u.Reputation <= 869
AND c.CreationDate >= 518

AND u.Id = c.UserId
AND u.Id = v.UserId;