SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.Score >= -6
AND p.Score <= 3
AND v.BountyAmount <= 125.0
AND u.DownVotes <= 6
AND p.CreationDate >= 601
AND p.CreationDate <= 1446
AND b.Date <= 1125
AND u.CreationDate >= 239
AND u.CreationDate <= 658

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;