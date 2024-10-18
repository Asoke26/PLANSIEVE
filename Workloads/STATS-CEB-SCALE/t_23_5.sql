SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE v.BountyAmount >= 125.0
AND v.BountyAmount <= 150.0
AND u.DownVotes = 25

AND u.Id = v.UserId
AND v.UserId = b.UserId;