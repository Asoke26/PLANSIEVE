SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 9
AND u.DownVotes >= 5
AND u.UpVotes >= 595
AND u.UpVotes <= 2496
AND b.Date >= 985
AND u.CreationDate >= 151
AND u.CreationDate <= 1219

AND u.Id = c.UserId
AND c.UserId = b.UserId;