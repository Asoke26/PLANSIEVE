SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 20
AND v.BountyAmount >= 75.0
AND v.BountyAmount <= 300.0
AND u.UpVotes >= 262
AND u.UpVotes <= 3274
AND v.CreationDate >= 145

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;