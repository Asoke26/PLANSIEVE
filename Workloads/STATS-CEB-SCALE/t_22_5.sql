SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 19
AND u.DownVotes <= 26

AND u.Id = v.UserId
AND v.UserId = b.UserId;