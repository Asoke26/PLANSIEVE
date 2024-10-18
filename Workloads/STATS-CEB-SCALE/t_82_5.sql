SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 458
AND u.Reputation <= 4701
AND u.Views <= 20932
AND u.DownVotes >= 27
AND u.CreationDate <= 1499

AND c.UserId = u.Id
AND ph.UserId = u.Id;