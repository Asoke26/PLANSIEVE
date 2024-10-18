SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND v.BountyAmount <= 400.0
AND u.UpVotes >= 1408
AND u.UpVotes <= 1607
AND c.CreationDate <= 1415
AND p.CreationDate >= 1509
AND v.CreationDate <= 288
AND u.CreationDate >= 38

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;