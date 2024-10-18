SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 160
AND u.DownVotes >= 1
AND u.DownVotes <= 63
AND c.CreationDate >= 917
AND c.CreationDate <= 1345

AND c.UserId = u.Id
AND b.UserId = u.Id;