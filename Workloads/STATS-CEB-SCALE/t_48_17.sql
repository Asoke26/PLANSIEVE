SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.Score >= 56
AND p.Score <= 90
AND v.BountyAmount <= 50.0
AND u.DownVotes <= 200
AND p.CreationDate >= 552
AND p.CreationDate <= 956
AND b.Date <= 700
AND u.CreationDate >= 433
AND u.CreationDate <= 1031

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;