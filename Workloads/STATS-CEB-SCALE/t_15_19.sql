SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 3
AND u.DownVotes >= 2
AND u.UpVotes >= 2
AND u.UpVotes <= 139
AND b.Date >= 177
AND u.CreationDate >= 305
AND u.CreationDate <= 1122

AND u.Id = c.UserId
AND c.UserId = b.UserId;