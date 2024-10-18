SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 230
AND u.Reputation <= 1416
AND c.CreationDate >= 995

AND u.Id = c.UserId
AND u.Id = v.UserId;