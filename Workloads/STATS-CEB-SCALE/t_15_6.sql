SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 13
AND u.DownVotes >= 65
AND u.UpVotes >= 218
AND u.UpVotes <= 2122
AND b.Date >= 749
AND u.CreationDate >= 204
AND u.CreationDate <= 1405

AND u.Id = c.UserId
AND c.UserId = b.UserId;