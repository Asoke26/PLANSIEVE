SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 170
AND u.Views <= 1040
AND u.UpVotes >= 43
AND v.BountyAmount >= 50.0
AND v.BountyAmount <= 500.0
AND u.CreationDate <= 1022
AND b.Date <= 754

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;