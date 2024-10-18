SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 494
AND u.Reputation <= 1725
AND u.Views <= 611
AND u.DownVotes >= 104
AND u.CreationDate <= 603

AND c.UserId = u.Id
AND ph.UserId = u.Id;