SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 8
AND v.BountyAmount >= 75.0
AND v.BountyAmount <= 500.0
AND u.UpVotes >= 4
AND u.UpVotes <= 224
AND v.CreationDate >= 508

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;