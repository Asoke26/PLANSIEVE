SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE v.BountyAmount >= 50.0
AND v.BountyAmount <= 200.0
AND u.DownVotes = 8

AND u.Id = v.UserId
AND v.UserId = b.UserId;