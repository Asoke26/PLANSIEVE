SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 21
AND u.UpVotes >= 70
AND c.CreationDate >= 129
AND b.Date >= 506
AND b.Date <= 1069

AND c.UserId = u.Id
AND b.UserId = u.Id;