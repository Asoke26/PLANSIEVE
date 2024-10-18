SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 3
AND v.BountyAmount <= 300.0
AND u.UpVotes >= 84
AND u.UpVotes <= 475
AND c.CreationDate <= 1493
AND p.CreationDate >= 831
AND v.CreationDate <= 1183
AND u.CreationDate >= 987

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;