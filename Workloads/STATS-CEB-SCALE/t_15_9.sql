SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 4
AND u.DownVotes >= 65
AND u.UpVotes >= 15
AND u.UpVotes <= 523
AND b.Date >= 37
AND u.CreationDate >= 311
AND u.CreationDate <= 1429

AND u.Id = c.UserId
AND c.UserId = b.UserId;