SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.Score >= 19
AND p.Score <= 30
AND v.BountyAmount <= 300.0
AND u.DownVotes <= 30
AND p.CreationDate >= 91
AND p.CreationDate <= 808
AND b.Date <= 1535
AND u.CreationDate >= 335
AND u.CreationDate <= 348

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;