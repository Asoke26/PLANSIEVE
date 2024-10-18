SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 378
AND u.Reputation <= 1917
AND u.Views <= 149
AND u.DownVotes >= 25
AND u.CreationDate <= 974

AND c.UserId = u.Id
AND ph.UserId = u.Id;