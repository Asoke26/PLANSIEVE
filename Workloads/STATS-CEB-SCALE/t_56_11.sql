SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 120
AND u.Views <= 6948
AND u.UpVotes >= 2619
AND v.BountyAmount >= 50.0
AND v.BountyAmount <= 125.0
AND u.CreationDate <= 1423
AND b.Date <= 160

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;