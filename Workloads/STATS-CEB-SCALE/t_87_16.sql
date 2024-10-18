SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 16
AND u.UpVotes >= 228
AND c.CreationDate >= 1315
AND b.Date >= 914
AND b.Date <= 1042

AND c.UserId = u.Id
AND b.UserId = u.Id;