SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 8
AND u.DownVotes >= 34
AND u.UpVotes >= 38
AND u.UpVotes <= 857
AND b.Date >= 927
AND u.CreationDate >= 415
AND u.CreationDate <= 784

AND u.Id = c.UserId
AND c.UserId = b.UserId;