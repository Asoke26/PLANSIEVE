SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 10
AND p.Score >= 9
AND p.Score <= 10
AND v.BountyAmount <= 75.0
AND u.DownVotes <= 119
AND p.CreationDate >= 404
AND p.CreationDate <= 1381
AND b.Date <= 1309
AND u.CreationDate >= 150
AND u.CreationDate <= 866

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;