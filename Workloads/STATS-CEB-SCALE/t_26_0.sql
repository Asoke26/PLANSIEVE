SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 3
AND v.BountyAmount <= 100.0
AND u.UpVotes >= 1
AND u.UpVotes <= 3274
AND c.CreationDate <= 276
AND p.CreationDate >= 546
AND v.CreationDate <= 447
AND u.CreationDate >= 157

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;