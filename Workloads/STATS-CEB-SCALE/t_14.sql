SELECT COUNT(*)
 FROM comments c,
badges b,
users u
WHERE c.Score=0
AND u.UpVotes>=0
AND c.CreationDate>=32
AND b.Date>=27
AND b.Date<=1543

AND u.Id = c.UserId
AND c.UserId = b.UserId;