SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 1
AND u.UpVotes >= 15
AND c.CreationDate >= 1435
AND b.Date >= 1264
AND b.Date <= 1490

AND u.Id = c.UserId
AND c.UserId = b.UserId;