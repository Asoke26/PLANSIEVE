SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 14
AND u.Reputation <= 741
AND u.Views <= 207
AND u.DownVotes >= 45
AND u.CreationDate <= 574

AND c.UserId = u.Id
AND ph.UserId = u.Id;