SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation >= 223
AND u.Reputation <= 685
AND c.CreationDate >= 127

AND u.Id = c.UserId
AND u.Id = v.UserId;