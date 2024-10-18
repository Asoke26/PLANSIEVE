SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 276
AND u.DownVotes >= 18
AND u.DownVotes <= 27
AND c.CreationDate >= 166
AND c.CreationDate <= 1260

AND c.UserId = u.Id
AND b.UserId = u.Id;