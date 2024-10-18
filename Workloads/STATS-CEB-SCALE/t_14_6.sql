SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 16
AND u.UpVotes >= 411
AND c.CreationDate >= 24
AND b.Date >= 852
AND b.Date <= 1460

AND u.Id = c.UserId
AND c.UserId = b.UserId;