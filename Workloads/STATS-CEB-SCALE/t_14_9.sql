SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 11
AND u.UpVotes >= 857
AND c.CreationDate >= 578
AND b.Date >= 290
AND b.Date <= 314

AND u.Id = c.UserId
AND c.UserId = b.UserId;