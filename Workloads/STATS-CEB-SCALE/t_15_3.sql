SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 10
AND u.DownVotes >= 9
AND u.UpVotes >= 154
AND u.UpVotes <= 3481
AND b.Date >= 1042
AND u.CreationDate >= 172
AND u.CreationDate <= 842

AND u.Id = c.UserId
AND c.UserId = b.UserId;