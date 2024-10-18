SELECT COUNT(*)
 FROM comments c,
postHistory ph,
users u
WHERE u.Reputation >= 195
AND u.Reputation <= 414
AND u.Views <= 382
AND u.DownVotes >= 3
AND u.CreationDate <= 635

AND c.UserId = u.Id
AND ph.UserId = u.Id;