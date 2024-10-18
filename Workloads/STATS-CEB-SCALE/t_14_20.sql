SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 6
AND u.UpVotes >= 1408
AND c.CreationDate >= 1312
AND b.Date >= 83
AND b.Date <= 124

AND u.Id = c.UserId
AND c.UserId = b.UserId;