SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 10
AND u.UpVotes >= 1607
AND c.CreationDate >= 716
AND b.Date >= 273
AND b.Date <= 598

AND u.Id = c.UserId
AND c.UserId = b.UserId;