SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 2
AND u.DownVotes >= 3
AND u.UpVotes >= 11
AND u.UpVotes <= 329
AND b.Date >= 612
AND u.CreationDate >= 493
AND u.CreationDate <= 1518

AND u.Id = c.UserId
AND c.UserId = b.UserId;