SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE v.BountyAmount >= 0.0
AND v.BountyAmount <= 75.0
AND u.DownVotes = 57

AND u.Id = v.UserId
AND v.UserId = b.UserId;