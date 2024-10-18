SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 40
AND u.UpVotes >= 106
AND c.CreationDate >= 877
AND b.Date >= 926
AND b.Date <= 1380

AND u.Id = c.UserId
AND c.UserId = b.UserId;