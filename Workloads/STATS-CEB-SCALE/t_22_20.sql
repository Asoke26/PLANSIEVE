SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 14
AND u.DownVotes <= 60

AND u.Id = v.UserId
AND v.UserId = b.UserId;