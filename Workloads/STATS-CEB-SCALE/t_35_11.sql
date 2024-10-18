SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 30
AND v.BountyAmount >= 75.0
AND v.BountyAmount <= 200.0
AND u.UpVotes >= 48
AND u.UpVotes <= 910
AND v.CreationDate >= 419

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;