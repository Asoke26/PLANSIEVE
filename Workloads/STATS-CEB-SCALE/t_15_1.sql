SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 7
AND u.DownVotes >= 139
AND u.UpVotes >= 45
AND u.UpVotes <= 630
AND b.Date >= 454
AND u.CreationDate >= 429
AND u.CreationDate <= 1301

AND u.Id = c.UserId
AND c.UserId = b.UserId;