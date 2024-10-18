SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views>=0
AND u.Views<=515
AND u.UpVotes>=0
AND v.BountyAmount>=0
AND v.BountyAmount<=200
AND u.CreationDate<=1538
AND b.Date<=1543

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;