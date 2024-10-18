SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 6176
AND u.Reputation <= 15236
AND u.Views <= 5529
AND u.DownVotes >= 5
AND u.CreationDate <= 1410

AND c.UserId = u.Id
AND ph.UserId = u.Id;