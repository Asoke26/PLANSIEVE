SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 4
AND u.DownVotes >= 56
AND u.UpVotes >= 71
AND u.UpVotes <= 140
AND b.Date >= 495
AND u.CreationDate >= 607
AND u.CreationDate <= 842

AND u.Id = c.UserId
AND c.UserId = b.UserId;