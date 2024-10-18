SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 991
AND u.DownVotes >= 10
AND u.DownVotes <= 21
AND c.CreationDate >= 939
AND c.CreationDate <= 1500

AND c.UserId = u.Id
AND b.UserId = u.Id;