SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 5
AND u.UpVotes >= 67
AND c.CreationDate >= 921
AND b.Date >= 580
AND b.Date <= 884

AND c.UserId = u.Id
AND b.UserId = u.Id;