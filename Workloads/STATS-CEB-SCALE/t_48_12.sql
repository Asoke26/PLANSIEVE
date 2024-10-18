SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 13
AND p.Score >= 15
AND p.Score <= 53
AND v.BountyAmount <= 125.0
AND u.DownVotes <= 103
AND p.CreationDate >= 705
AND p.CreationDate <= 1168
AND b.Date <= 1171
AND u.CreationDate >= 72
AND u.CreationDate <= 885

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;