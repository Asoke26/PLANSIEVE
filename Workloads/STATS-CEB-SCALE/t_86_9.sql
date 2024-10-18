SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 51
AND u.DownVotes >= 47
AND u.DownVotes <= 49
AND c.CreationDate >= 456
AND c.CreationDate <= 1368

AND c.UserId = u.Id
AND b.UserId = u.Id;