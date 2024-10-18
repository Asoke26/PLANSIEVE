SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 2
AND p.Score >= 50
AND p.Score <= 152
AND v.BountyAmount <= 150.0
AND u.DownVotes <= 56
AND p.CreationDate >= 374
AND p.CreationDate <= 924
AND b.Date <= 761
AND u.CreationDate >= 349
AND u.CreationDate <= 749

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;