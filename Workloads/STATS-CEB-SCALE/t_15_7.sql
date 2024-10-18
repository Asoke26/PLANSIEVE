SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 6
AND u.DownVotes >= 26
AND u.UpVotes >= 147
AND u.UpVotes <= 602
AND b.Date >= 334
AND u.CreationDate >= 907
AND u.CreationDate <= 1045

AND u.Id = c.UserId
AND c.UserId = b.UserId;