SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 140
AND u.DownVotes >= 1
AND u.DownVotes <= 18
AND c.CreationDate >= 389
AND c.CreationDate <= 535

AND c.UserId = u.Id
AND b.UserId = u.Id;