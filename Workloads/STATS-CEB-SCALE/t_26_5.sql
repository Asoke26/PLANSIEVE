SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 2
AND v.BountyAmount <= 300.0
AND u.UpVotes >= 76
AND u.UpVotes <= 625
AND c.CreationDate <= 1474
AND p.CreationDate >= 1023
AND v.CreationDate <= 1433
AND u.CreationDate >= 1105

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;