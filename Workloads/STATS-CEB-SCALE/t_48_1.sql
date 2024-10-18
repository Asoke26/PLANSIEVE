SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 7
AND p.Score >= -13
AND p.Score <= 39
AND v.BountyAmount <= 150.0
AND u.DownVotes <= 163
AND p.CreationDate >= 942
AND p.CreationDate <= 1454
AND b.Date <= 752
AND u.CreationDate >= 140
AND u.CreationDate <= 746

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;