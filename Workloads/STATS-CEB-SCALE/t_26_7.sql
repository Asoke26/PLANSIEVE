SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 11
AND v.BountyAmount <= 100.0
AND u.UpVotes >= 229
AND u.UpVotes <= 300
AND c.CreationDate <= 865
AND p.CreationDate >= 254
AND v.CreationDate <= 1404
AND u.CreationDate >= 276

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;