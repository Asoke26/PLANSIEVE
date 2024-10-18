SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 1
AND v.BountyAmount >= 125.0
AND v.BountyAmount <= 250.0
AND u.UpVotes >= 62
AND u.UpVotes <= 116
AND v.CreationDate >= 526

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;