SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 46
AND u.Views <= 445
AND u.UpVotes >= 218
AND v.BountyAmount >= 50.0
AND v.BountyAmount <= 200.0
AND u.CreationDate <= 400
AND b.Date <= 840

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;