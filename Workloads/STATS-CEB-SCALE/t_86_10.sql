SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 138
AND u.DownVotes >= 41
AND u.DownVotes <= 125
AND c.CreationDate >= 672
AND c.CreationDate <= 776

AND c.UserId = u.Id
AND b.UserId = u.Id;