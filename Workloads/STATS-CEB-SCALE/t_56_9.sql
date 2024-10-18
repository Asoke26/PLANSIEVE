SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 30
AND u.Views <= 589
AND u.UpVotes >= 226
AND v.BountyAmount >= 25.0
AND v.BountyAmount <= 400.0
AND u.CreationDate <= 471
AND b.Date <= 435

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;