SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 36
AND u.DownVotes <= 110

AND u.Id = v.UserId
AND v.UserId = b.UserId;