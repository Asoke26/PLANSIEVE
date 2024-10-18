SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 7
AND u.DownVotes >= 2
AND u.UpVotes >= 477
AND u.UpVotes <= 7035
AND b.Date >= 1226
AND u.CreationDate >= 210
AND u.CreationDate <= 1221

AND u.Id = c.UserId
AND c.UserId = b.UserId;