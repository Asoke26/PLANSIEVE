SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 104
AND u.DownVotes >= 5
AND u.DownVotes <= 125
AND c.CreationDate >= 570
AND c.CreationDate <= 990

AND c.UserId = u.Id
AND b.UserId = u.Id;