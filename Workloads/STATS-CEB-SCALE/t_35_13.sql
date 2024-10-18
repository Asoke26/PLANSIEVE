SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 30
AND v.BountyAmount >= 100.0
AND v.BountyAmount <= 150.0
AND u.UpVotes >= 171
AND u.UpVotes <= 1316
AND v.CreationDate >= 1262

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;