SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 52
AND u.DownVotes >= 30
AND u.DownVotes <= 39
AND c.CreationDate >= 1041
AND c.CreationDate <= 1254

AND c.UserId = u.Id
AND b.UserId = u.Id;