SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 9
AND p.Score >= -10
AND p.Score <= 7
AND v.BountyAmount <= 350.0
AND u.DownVotes <= 1920
AND p.CreationDate >= 857
AND p.CreationDate <= 994
AND b.Date <= 665
AND u.CreationDate >= 253
AND u.CreationDate <= 1494

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;