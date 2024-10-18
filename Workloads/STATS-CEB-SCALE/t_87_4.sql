SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 19
AND u.UpVotes >= 595
AND c.CreationDate >= 147
AND b.Date >= 1177
AND b.Date <= 1385

AND c.UserId = u.Id
AND b.UserId = u.Id;