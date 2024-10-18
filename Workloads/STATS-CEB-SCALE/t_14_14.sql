SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 13
AND u.UpVotes >= 267
AND c.CreationDate >= 327
AND b.Date >= 506
AND b.Date <= 742

AND u.Id = c.UserId
AND c.UserId = b.UserId;