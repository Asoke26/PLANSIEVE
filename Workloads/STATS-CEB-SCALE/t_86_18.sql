SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 71
AND u.DownVotes >= 34
AND u.DownVotes <= 113
AND c.CreationDate >= 654
AND c.CreationDate <= 725

AND c.UserId = u.Id
AND b.UserId = u.Id;