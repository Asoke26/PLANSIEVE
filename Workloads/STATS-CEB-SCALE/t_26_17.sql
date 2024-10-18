SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score = 2
AND v.BountyAmount <= 75.0
AND u.UpVotes >= 121
AND u.UpVotes <= 345
AND c.CreationDate <= 955
AND p.CreationDate >= 1116
AND v.CreationDate <= 1360
AND u.CreationDate >= 507

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;