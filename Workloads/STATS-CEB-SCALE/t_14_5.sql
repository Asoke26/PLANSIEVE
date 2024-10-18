SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 9
AND u.UpVotes >= 115
AND c.CreationDate >= 185
AND b.Date >= 573
AND b.Date <= 1516

AND u.Id = c.UserId
AND c.UserId = b.UserId;