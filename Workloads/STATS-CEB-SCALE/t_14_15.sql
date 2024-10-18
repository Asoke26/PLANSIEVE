SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 7
AND u.UpVotes >= 27
AND c.CreationDate >= 1187
AND b.Date >= 67
AND b.Date <= 1002

AND u.Id = c.UserId
AND c.UserId = b.UserId;