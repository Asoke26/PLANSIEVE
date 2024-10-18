SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 519
AND u.Reputation <= 3359
AND u.Views <= 169
AND u.DownVotes >= 88
AND u.CreationDate <= 963

AND c.UserId = u.Id
AND ph.UserId = u.Id;