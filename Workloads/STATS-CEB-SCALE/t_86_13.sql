SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 1055
AND u.DownVotes >= 40
AND u.DownVotes <= 131
AND c.CreationDate >= 537
AND c.CreationDate <= 1256

AND c.UserId = u.Id
AND b.UserId = u.Id;