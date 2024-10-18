SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 4
AND u.UpVotes >= 444
AND c.CreationDate >= 482
AND b.Date >= 377
AND b.Date <= 1087

AND c.UserId = u.Id
AND b.UserId = u.Id;