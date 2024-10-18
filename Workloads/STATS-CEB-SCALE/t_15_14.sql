SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 11
AND u.DownVotes >= 39
AND u.UpVotes >= 304
AND u.UpVotes <= 458
AND b.Date >= 96
AND u.CreationDate >= 837
AND u.CreationDate <= 1484

AND u.Id = c.UserId
AND c.UserId = b.UserId;