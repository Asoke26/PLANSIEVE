SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 169
AND u.Reputation <= 624
AND u.Views <= 305
AND u.DownVotes >= 43
AND u.CreationDate <= 1021

AND c.UserId = u.Id
AND ph.UserId = u.Id;