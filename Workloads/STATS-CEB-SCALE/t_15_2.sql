SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 0
AND u.DownVotes >= 187
AND u.UpVotes >= 127
AND u.UpVotes <= 1230
AND b.Date >= 1093
AND u.CreationDate >= 106
AND u.CreationDate <= 490

AND u.Id = c.UserId
AND c.UserId = b.UserId;