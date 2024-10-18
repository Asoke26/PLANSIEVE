SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 37
AND u.DownVotes <= 48

AND u.Id = v.UserId
AND v.UserId = b.UserId;