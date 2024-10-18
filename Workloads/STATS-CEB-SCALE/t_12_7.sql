SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 53
AND u.Reputation <= 243
AND c.CreationDate >= 1348

AND u.Id = c.UserId
AND u.Id = v.UserId;