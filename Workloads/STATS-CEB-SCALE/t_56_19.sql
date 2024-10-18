SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 111
AND u.Views <= 162
AND u.UpVotes >= 196
AND v.BountyAmount >= 50.0
AND v.BountyAmount <= 500.0
AND u.CreationDate <= 349
AND b.Date <= 556

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;