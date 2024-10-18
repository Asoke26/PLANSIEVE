SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v,
badges b,
users u
WHERE p.Score >= 18
AND p.Score <= 68
AND p.FavoriteCount >= 17.0
AND pl.LinkTypeId = 3
AND v.VoteTypeId = 15
AND u.Reputation >= 2
AND c.CreationDate >= 807
AND c.CreationDate <= 959
AND pl.CreationDate >= 1448
AND v.CreationDate <= 1291
AND u.CreationDate >= 339
AND u.CreationDate <= 812

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = v.PostId
AND u.Id = p.OwnerUserId
AND u.Id = b.UserId;