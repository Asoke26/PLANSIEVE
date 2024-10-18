SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 17
AND u.DownVotes >= 7
AND u.UpVotes >= 582
AND u.UpVotes <= 2496
AND b.Date >= 800
AND u.CreationDate >= 33
AND u.CreationDate <= 584

AND u.Id = c.UserId
AND c.UserId = b.UserId;