SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 40
AND u.DownVotes >= 113
AND u.UpVotes >= 89
AND u.UpVotes <= 1781
AND b.Date >= 908
AND u.CreationDate >= 98
AND u.CreationDate <= 1328

AND u.Id = c.UserId
AND c.UserId = b.UserId;