SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 85
AND u.Reputation <= 248
AND u.Views <= 78
AND u.DownVotes >= 0
AND u.CreationDate <= 314

AND c.UserId = u.Id
AND ph.UserId = u.Id;