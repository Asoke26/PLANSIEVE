SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.Score >= 31
AND p.Score <= 63
AND v.BountyAmount <= 400.0
AND u.DownVotes <= 40
AND p.CreationDate >= 106
AND p.CreationDate <= 1066
AND b.Date <= 927
AND u.CreationDate >= 437
AND u.CreationDate <= 1250

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;