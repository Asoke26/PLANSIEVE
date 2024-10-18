SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score = 6
AND u.DownVotes >= 3
AND u.UpVotes >= 149
AND u.UpVotes <= 1607
AND b.Date >= 674
AND u.CreationDate >= 516
AND u.CreationDate <= 828

AND u.Id = c.UserId
AND c.UserId = b.UserId;