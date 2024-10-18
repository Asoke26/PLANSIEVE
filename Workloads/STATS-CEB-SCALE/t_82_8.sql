SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 583
AND u.Reputation <= 2400
AND u.Views <= 881
AND u.DownVotes >= 55
AND u.CreationDate <= 852

AND c.UserId = u.Id
AND ph.UserId = u.Id;