SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.Reputation >= 344
AND u.Reputation <= 7663
AND u.DownVotes >= 10
AND u.DownVotes <= 139
AND c.CreationDate <= 530
AND b.Date >= 1467

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;