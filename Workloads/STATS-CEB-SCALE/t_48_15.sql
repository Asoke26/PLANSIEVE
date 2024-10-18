SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.Score >= 81
AND p.Score <= 140
AND v.BountyAmount <= 400.0
AND u.DownVotes <= 126
AND p.CreationDate >= 346
AND p.CreationDate <= 542
AND b.Date <= 833
AND u.CreationDate >= 39
AND u.CreationDate <= 559

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;