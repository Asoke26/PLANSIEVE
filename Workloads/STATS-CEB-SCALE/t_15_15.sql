SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 9
AND u.DownVotes >= 24
AND u.UpVotes >= 54
AND u.UpVotes <= 523
AND b.Date >= 1112
AND u.CreationDate >= 537
AND u.CreationDate <= 1199

AND u.Id = c.UserId
AND c.UserId = b.UserId;