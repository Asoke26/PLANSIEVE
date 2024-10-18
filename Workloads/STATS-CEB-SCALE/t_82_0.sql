SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 103
AND u.Reputation <= 162
AND u.Views <= 146
AND u.DownVotes >= 4
AND u.CreationDate <= 1454

AND c.UserId = u.Id
AND ph.UserId = u.Id;