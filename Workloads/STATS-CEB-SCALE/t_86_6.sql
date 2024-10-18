SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 44
AND u.DownVotes >= 8
AND u.DownVotes <= 45
AND c.CreationDate >= 779
AND c.CreationDate <= 1296

AND c.UserId = u.Id
AND b.UserId = u.Id;