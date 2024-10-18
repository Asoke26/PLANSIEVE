SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 85
AND u.DownVotes >= 0
AND u.DownVotes <= 54
AND c.CreationDate >= 389
AND c.CreationDate <= 1353

AND c.UserId = u.Id
AND b.UserId = u.Id;