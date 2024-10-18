SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 385
AND u.DownVotes >= 44
AND u.DownVotes <= 55
AND c.CreationDate >= 6
AND c.CreationDate <= 229

AND c.UserId = u.Id
AND b.UserId = u.Id;