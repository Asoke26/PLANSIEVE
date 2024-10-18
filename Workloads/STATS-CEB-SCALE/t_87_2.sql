SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 21
AND u.UpVotes >= 81
AND c.CreationDate >= 431
AND b.Date >= 92
AND b.Date <= 688

AND c.UserId = u.Id
AND b.UserId = u.Id;