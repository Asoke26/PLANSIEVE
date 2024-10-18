SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 25
AND u.Views <= 180
AND u.UpVotes >= 194
AND v.BountyAmount >= 25.0
AND v.BountyAmount <= 200.0
AND u.CreationDate <= 652
AND b.Date <= 293

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;