SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 57
AND u.DownVotes <= 63

AND u.Id = v.UserId
AND v.UserId = b.UserId;