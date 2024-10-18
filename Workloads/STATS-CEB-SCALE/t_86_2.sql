SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 384
AND u.DownVotes >= 55
AND u.DownVotes <= 131
AND c.CreationDate >= 1011
AND c.CreationDate <= 1152

AND c.UserId = u.Id
AND b.UserId = u.Id;