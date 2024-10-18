SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND v.BountyAmount <= 100.0
AND u.UpVotes >= 49
AND u.UpVotes <= 138
AND c.CreationDate <= 562
AND p.CreationDate >= 1332
AND v.CreationDate <= 1164
AND u.CreationDate >= 461

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;