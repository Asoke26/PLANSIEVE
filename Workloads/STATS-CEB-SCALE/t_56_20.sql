SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 338
AND u.Views <= 1126
AND u.UpVotes >= 106
AND v.BountyAmount >= 100.0
AND v.BountyAmount <= 350.0
AND u.CreationDate <= 1185
AND b.Date <= 142

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;