SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 119
AND u.Reputation <= 3008
AND u.Views <= 267
AND u.DownVotes >= 26
AND u.CreationDate <= 1406

AND c.UserId = u.Id
AND ph.UserId = u.Id;