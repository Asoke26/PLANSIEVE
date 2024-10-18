SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.Score >= 20
AND p.Score <= 24
AND v.BountyAmount <= 250.0
AND u.DownVotes <= 82
AND p.CreationDate >= 657
AND p.CreationDate <= 963
AND b.Date <= 888
AND u.CreationDate >= 581
AND u.CreationDate <= 867

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;