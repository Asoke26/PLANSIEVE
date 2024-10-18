SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 13
AND u.DownVotes >= 143
AND u.UpVotes >= 62
AND u.UpVotes <= 2122
AND b.Date >= 349
AND u.CreationDate >= 963
AND u.CreationDate <= 1488

AND u.Id = c.UserId
AND c.UserId = b.UserId;