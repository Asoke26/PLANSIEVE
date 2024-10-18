SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 22
AND u.UpVotes >= 198
AND c.CreationDate >= 368
AND b.Date >= 1070
AND b.Date <= 1085

AND u.Id = c.UserId
AND c.UserId = b.UserId;