SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 497
AND u.Reputation <= 1766
AND u.Views <= 262
AND u.DownVotes >= 24
AND u.CreationDate <= 63

AND c.UserId = u.Id
AND ph.UserId = u.Id;