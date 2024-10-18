SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 15
AND u.UpVotes >= 2664
AND c.CreationDate >= 715
AND b.Date >= 554
AND b.Date <= 918

AND c.UserId = u.Id
AND b.UserId = u.Id;