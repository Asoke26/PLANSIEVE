SELECT COUNT(*)
 FROM comments c,
posts p,
votes v,
users u
WHERE c.Score=0
AND v.BountyAmount<=50
AND u.UpVotes>=0
AND u.UpVotes<=12
AND c.CreationDate<=1544
AND p.CreationDate>=35
AND v.CreationDate<=1543
AND u.CreationDate>=27

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = v.UserId;