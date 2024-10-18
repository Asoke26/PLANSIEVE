SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE v.BountyAmount >= 0.0
AND v.BountyAmount <= 300.0
AND u.DownVotes = 26

AND u.Id = v.UserId
AND v.UserId = b.UserId;