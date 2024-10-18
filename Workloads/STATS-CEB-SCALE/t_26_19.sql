SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 11
AND v.BountyAmount <= 500.0
AND u.UpVotes >= 134
AND u.UpVotes <= 343
AND c.CreationDate <= 1448
AND p.CreationDate >= 141
AND v.CreationDate <= 1213
AND u.CreationDate >= 461

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;