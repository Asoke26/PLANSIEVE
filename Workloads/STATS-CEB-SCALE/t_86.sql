SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE u.Views>=0
AND u.DownVotes>=0
AND u.DownVotes<=2
AND c.CreationDate>=51
AND c.CreationDate<=1543

AND c.UserId = u.Id
AND b.UserId = u.Id;