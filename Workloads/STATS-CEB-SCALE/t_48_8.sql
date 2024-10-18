SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
badges b,
users u
WHERE c.Score = 2
AND p.Score >= 33
AND p.Score <= 192
AND v.BountyAmount <= 75.0
AND u.DownVotes <= 131
AND p.CreationDate >= 349
AND p.CreationDate <= 1223
AND b.Date <= 852
AND u.CreationDate >= 128
AND u.CreationDate <= 1464

AND u.Id = c.UserId
AND c.UserId = p.OwnerUserId
AND p.OwnerUserId = v.UserId
AND v.UserId = b.UserId;