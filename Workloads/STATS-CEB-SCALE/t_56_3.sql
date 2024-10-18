SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 870
AND u.Views <= 1305
AND u.UpVotes >= 155
AND v.BountyAmount >= 50.0
AND v.BountyAmount <= 125.0
AND u.CreationDate <= 536
AND b.Date <= 1444

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;