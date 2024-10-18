SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 30
AND v.BountyAmount >= 25.0
AND v.BountyAmount <= 250.0
AND u.UpVotes >= 16
AND u.UpVotes <= 454
AND v.CreationDate >= 1126

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;