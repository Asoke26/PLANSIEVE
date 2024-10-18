SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE v.BountyAmount >= 75.0
AND v.BountyAmount <= 300.0
AND u.DownVotes = 8

AND u.Id = v.UserId
AND v.UserId = b.UserId;