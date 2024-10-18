SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 507
AND u.Reputation <= 660
AND u.Views <= 260
AND u.DownVotes >= 5
AND u.CreationDate <= 803

AND c.UserId = u.Id
AND ph.UserId = u.Id;