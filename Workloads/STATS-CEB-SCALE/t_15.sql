SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score=0
AND u.DownVotes>=0
AND u.UpVotes>=0
AND u.UpVotes<=17
AND b.Date>=27
AND u.CreationDate>=45
AND u.CreationDate<=1539

AND u.Id = c.UserId
AND c.UserId = b.UserId;