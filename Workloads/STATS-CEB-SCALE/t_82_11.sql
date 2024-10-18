SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 32
AND u.Reputation <= 364
AND u.Views <= 265
AND u.DownVotes >= 5
AND u.CreationDate <= 1263

AND c.UserId = u.Id
AND ph.UserId = u.Id;