SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.Score >= -1
AND p.Score <= 156
AND v.BountyAmount <= 500.0
AND u.DownVotes <= 16
AND p.CreationDate >= 449
AND p.CreationDate <= 909
AND b.Date <= 1267
AND u.CreationDate >= 391
AND u.CreationDate <= 1094

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;