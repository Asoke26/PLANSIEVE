SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes>=0
AND u.DownVotes<=0

AND u.Id = v.UserId
AND v.UserId = b.UserId;