SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 1
AND u.UpVotes >= 13
AND c.CreationDate >= 863
AND b.Date >= 123
AND b.Date <= 996

AND c.UserId = u.Id
AND b.UserId = u.Id;