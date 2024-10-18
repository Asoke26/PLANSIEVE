SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 2
AND u.DownVotes <= 139

AND u.Id = v.UserId
AND v.UserId = b.UserId;