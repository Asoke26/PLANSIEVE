SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 5
AND u.DownVotes <= 22

AND u.Id = v.UserId
AND v.UserId = b.UserId;