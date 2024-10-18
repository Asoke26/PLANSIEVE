SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 12
AND u.UpVotes >= 224
AND c.CreationDate >= 1190
AND b.Date >= 1035
AND b.Date <= 1052

AND u.Id = c.UserId
AND c.UserId = b.UserId;