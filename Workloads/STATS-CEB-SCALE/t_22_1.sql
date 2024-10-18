SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 27
AND u.DownVotes <= 125

AND u.Id = v.UserId
AND v.UserId = b.UserId;