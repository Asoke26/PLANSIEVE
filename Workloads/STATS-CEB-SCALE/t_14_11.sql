SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 24
AND u.UpVotes >= 76
AND c.CreationDate >= 223
AND b.Date >= 560
AND b.Date <= 1058

AND u.Id = c.UserId
AND c.UserId = b.UserId;