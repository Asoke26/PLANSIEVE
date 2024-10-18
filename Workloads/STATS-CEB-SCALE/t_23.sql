SELECT COUNT(*)
 FROM votes v,
badges b,
users u
WHERE v.BountyAmount>=0
AND v.BountyAmount<=50
AND u.DownVotes=0

AND u.Id = v.UserId
AND v.UserId = b.UserId;