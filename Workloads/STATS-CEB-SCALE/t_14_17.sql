SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 24
AND u.UpVotes >= 86
AND c.CreationDate >= 1211
AND b.Date >= 52
AND b.Date <= 1325

AND u.Id = c.UserId
AND c.UserId = b.UserId;