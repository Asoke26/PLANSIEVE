SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 12
AND u.DownVotes >= 11
AND u.UpVotes >= 8
AND u.UpVotes <= 339
AND b.Date >= 1186
AND u.CreationDate >= 529
AND u.CreationDate <= 678

AND u.Id = c.UserId
AND c.UserId = b.UserId;