SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 286
AND u.DownVotes >= 41
AND u.DownVotes <= 56
AND c.CreationDate >= 662
AND c.CreationDate <= 1124

AND c.UserId = u.Id
AND b.UserId = u.Id;