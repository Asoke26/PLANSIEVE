SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 22
AND u.UpVotes >= 705
AND c.CreationDate >= 1079
AND b.Date >= 219
AND b.Date <= 1213

AND c.UserId = u.Id
AND b.UserId = u.Id;