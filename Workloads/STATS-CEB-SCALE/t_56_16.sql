SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 69
AND u.Views <= 126
AND u.UpVotes >= 12
AND v.BountyAmount >= 25.0
AND v.BountyAmount <= 400.0
AND u.CreationDate <= 1047
AND b.Date <= 1178

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;