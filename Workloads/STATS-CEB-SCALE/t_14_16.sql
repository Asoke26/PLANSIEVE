SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 8
AND u.UpVotes >= 5007
AND c.CreationDate >= 755
AND b.Date >= 560
AND b.Date <= 1250

AND u.Id = c.UserId
AND c.UserId = b.UserId;