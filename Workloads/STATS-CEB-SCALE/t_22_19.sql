SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 3
AND u.DownVotes <= 63

AND u.Id = v.UserId
AND v.UserId = b.UserId;