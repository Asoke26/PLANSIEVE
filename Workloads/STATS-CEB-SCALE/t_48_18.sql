SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 6
AND p.Score >= 49
AND p.Score <= 97
AND v.BountyAmount <= 200.0
AND u.DownVotes <= 139
AND p.CreationDate >= 348
AND p.CreationDate <= 760
AND b.Date <= 450
AND u.CreationDate >= 27
AND u.CreationDate <= 449

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;