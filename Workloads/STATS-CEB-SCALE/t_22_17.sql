SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE u.DownVotes >= 65
AND u.DownVotes <= 145

AND u.Id = v.UserId
AND v.UserId = b.UserId;