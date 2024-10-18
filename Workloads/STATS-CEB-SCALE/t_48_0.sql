SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 18
AND p.Score >= -10
AND p.Score <= 98
AND v.BountyAmount <= 125.0
AND u.DownVotes <= 145
AND p.CreationDate >= 756
AND p.CreationDate <= 1058
AND b.Date <= 719
AND u.CreationDate >= 158
AND u.CreationDate <= 1522

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;