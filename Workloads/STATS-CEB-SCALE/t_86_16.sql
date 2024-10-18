SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 1534
AND u.DownVotes >= 37
AND u.DownVotes <= 91
AND c.CreationDate >= 740
AND c.CreationDate <= 803

AND c.UserId = u.Id
AND b.UserId = u.Id;