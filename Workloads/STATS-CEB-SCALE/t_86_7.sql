SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 84
AND u.DownVotes >= 24
AND u.DownVotes <= 49
AND c.CreationDate >= 702
AND c.CreationDate <= 1375

AND c.UserId = u.Id
AND b.UserId = u.Id;