SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 7
AND v.BountyAmount <= 50.0
AND u.UpVotes >= 131
AND u.UpVotes <= 1781
AND c.CreationDate <= 1276
AND p.CreationDate >= 622
AND v.CreationDate <= 514
AND u.CreationDate >= 171

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;