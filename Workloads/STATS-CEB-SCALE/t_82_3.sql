SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 367
AND u.Reputation <= 1061
AND u.Views <= 350
AND u.DownVotes >= 18
AND u.CreationDate <= 382

AND c.UserId = u.Id
AND ph.UserId = u.Id;