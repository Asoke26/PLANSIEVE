SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 0
AND v.BountyAmount <= 150.0
AND u.UpVotes >= 177
AND u.UpVotes <= 613
AND c.CreationDate <= 1004
AND p.CreationDate >= 266
AND v.CreationDate <= 973
AND u.CreationDate >= 416

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;