SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 19
AND u.UpVotes >= 288
AND c.CreationDate >= 750
AND b.Date >= 930
AND b.Date <= 1063

AND u.Id = c.UserId
AND c.UserId = b.UserId;