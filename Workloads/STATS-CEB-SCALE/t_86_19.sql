SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 105
AND u.DownVotes >= 10
AND u.DownVotes <= 412
AND c.CreationDate >= 704
AND c.CreationDate <= 1435

AND c.UserId = u.Id
AND b.UserId = u.Id;