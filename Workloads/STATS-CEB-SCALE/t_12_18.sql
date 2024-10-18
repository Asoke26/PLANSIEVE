SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 155
AND u.Reputation <= 507
AND c.CreationDate >= 1199

AND u.Id = c.UserId
AND u.Id = v.UserId;