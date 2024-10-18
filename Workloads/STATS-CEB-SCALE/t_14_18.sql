SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 14
AND u.UpVotes >= 475
AND c.CreationDate >= 719
AND b.Date >= 871
AND b.Date <= 1317

AND u.Id = c.UserId
AND c.UserId = b.UserId;