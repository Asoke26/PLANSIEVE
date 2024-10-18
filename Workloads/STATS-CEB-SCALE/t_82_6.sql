SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 1077
AND u.Reputation <= 2653
AND u.Views <= 331
AND u.DownVotes >= 0
AND u.CreationDate <= 224

AND c.UserId = u.Id
AND ph.UserId = u.Id;