SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE v.BountyAmount >= 100.0
AND v.BountyAmount <= 250.0
AND u.DownVotes = 55

AND u.Id = v.UserId
AND v.UserId = b.UserId;