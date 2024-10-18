SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views >= 627
AND u.DownVotes >= 7
AND u.DownVotes <= 40
AND c.CreationDate >= 84
AND c.CreationDate <= 924

AND c.UserId = u.Id
AND b.UserId = u.Id;