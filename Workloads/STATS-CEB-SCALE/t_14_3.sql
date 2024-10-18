SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 10
AND u.UpVotes >= 169
AND c.CreationDate >= 897
AND b.Date >= 734
AND b.Date <= 1324

AND u.Id = c.UserId
AND c.UserId = b.UserId;