SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 6
AND u.UpVotes >= 401
AND c.CreationDate >= 616
AND b.Date >= 986
AND b.Date <= 1017

AND c.UserId = u.Id
AND b.UserId = u.Id;