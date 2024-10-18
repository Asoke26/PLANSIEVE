SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE u.Reputation >= 82
AND u.Reputation <= 1453
AND u.DownVotes >= 0
AND u.DownVotes <= 125
AND c.CreationDate <= 500
AND b.Date >= 1493

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = c.UserId;