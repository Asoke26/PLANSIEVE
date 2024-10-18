SELECT COUNT(*)
 FROM tags t,
posts p,
users u,
votes v,
badges b
WHERE u.Views >= 973
AND u.Views <= 1471
AND u.UpVotes >= 283
AND v.BountyAmount >= 75.0
AND v.BountyAmount <= 200.0
AND u.CreationDate <= 547
AND b.Date <= 572

AND p.Id = t.ExcerptPostId
AND u.Id = v.UserId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;