SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 4
AND u.UpVotes >= 403
AND c.CreationDate >= 427
AND b.Date >= 498
AND b.Date <= 1222

AND u.Id = c.UserId
AND c.UserId = b.UserId;