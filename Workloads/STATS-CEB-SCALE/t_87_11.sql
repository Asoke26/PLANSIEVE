SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 28
AND u.UpVotes >= 154
AND c.CreationDate >= 272
AND b.Date >= 600
AND b.Date <= 1077

AND c.UserId = u.Id
AND b.UserId = u.Id;