SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 181
AND u.Reputation <= 10690
AND u.Views <= 681
AND u.DownVotes >= 11
AND u.CreationDate <= 833

AND c.UserId = u.Id
AND ph.UserId = u.Id;