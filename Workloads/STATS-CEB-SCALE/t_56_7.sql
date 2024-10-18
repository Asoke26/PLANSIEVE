SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 48
AND u.Views <= 182
AND u.UpVotes >= 65
AND v.BountyAmount >= 50.0
AND v.BountyAmount <= 100.0
AND u.CreationDate <= 174
AND b.Date <= 1117

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;