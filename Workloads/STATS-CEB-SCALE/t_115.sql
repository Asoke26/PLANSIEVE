SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score=2
AND u.Reputation>=1
AND u.Reputation<=1183
AND u.Views>=0
AND ph.CreationDate>=58
AND ph.CreationDate<=1534

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;