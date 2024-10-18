SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 50
AND u.Views <= 842
AND u.UpVotes >= 595
AND v.BountyAmount >= 0.0
AND v.BountyAmount <= 250.0
AND u.CreationDate <= 1372
AND b.Date <= 650

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;