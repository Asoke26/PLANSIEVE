SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 197
AND u.Reputation <= 4128
AND u.Views <= 119
AND u.DownVotes >= 14
AND u.CreationDate <= 418

AND c.UserId = u.Id
AND ph.UserId = u.Id;