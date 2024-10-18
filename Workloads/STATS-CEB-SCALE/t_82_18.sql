SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 441
AND u.Reputation <= 8164
AND u.Views <= 467
AND u.DownVotes >= 113
AND u.CreationDate <= 427

AND c.UserId = u.Id
AND ph.UserId = u.Id;