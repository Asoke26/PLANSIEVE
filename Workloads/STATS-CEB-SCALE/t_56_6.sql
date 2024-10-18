SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 248
AND u.Views <= 350
AND u.UpVotes >= 27
AND v.BountyAmount >= 125.0
AND v.BountyAmount <= 300.0
AND u.CreationDate <= 1262
AND b.Date <= 1168

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;