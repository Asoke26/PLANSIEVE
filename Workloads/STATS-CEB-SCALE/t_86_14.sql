SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 5529
AND u.DownVotes >= 57
AND u.DownVotes <= 139
AND c.CreationDate >= 651
AND c.CreationDate <= 705

AND c.UserId = u.Id
AND b.UserId = u.Id;