SELECT COUNT(*)
 FROM comments c,
votes v,
badges b,
users u
WHERE c.Score = 10
AND v.BountyAmount >= 50.0
AND u.DownVotes <= 23
AND v.CreationDate <= 1434
AND u.CreationDate >= 109
AND u.CreationDate <= 1082

AND u.Id = c.UserId
AND u.Id = v.UserId
AND u.Id = b.UserId;