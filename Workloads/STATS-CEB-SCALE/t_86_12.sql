SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 3559
AND u.DownVotes >= 63
AND u.DownVotes <= 104
AND c.CreationDate >= 113
AND c.CreationDate <= 945

AND c.UserId = u.Id
AND b.UserId = u.Id;