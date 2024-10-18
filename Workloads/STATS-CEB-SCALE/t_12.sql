SELECT COUNT(*)
 FROM comments c,
votes v,
users u
WHERE u.Reputation>=1
AND u.Reputation<=691
AND c.CreationDate>=49

AND u.Id = c.UserId
AND u.Id = v.UserId;