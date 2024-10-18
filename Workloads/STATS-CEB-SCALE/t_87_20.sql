SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 16
AND u.UpVotes >= 662
AND c.CreationDate >= 1014
AND b.Date >= 647
AND b.Date <= 940

AND c.UserId = u.Id
AND b.UserId = u.Id;