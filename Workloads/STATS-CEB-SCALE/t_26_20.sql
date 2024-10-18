SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 11
AND v.BountyAmount <= 500.0
AND u.UpVotes >= 128
AND u.UpVotes <= 6054
AND c.CreationDate <= 1276
AND p.CreationDate >= 327
AND v.CreationDate <= 1170
AND u.CreationDate >= 34

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;