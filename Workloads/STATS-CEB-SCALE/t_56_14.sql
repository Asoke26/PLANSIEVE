SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 33
AND u.Views <= 286
AND u.UpVotes >= 9
AND v.BountyAmount >= 0.0
AND v.BountyAmount <= 350.0
AND u.CreationDate <= 44
AND b.Date <= 431

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;