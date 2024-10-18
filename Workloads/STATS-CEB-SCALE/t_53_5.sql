SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 45
AND p.ViewCount >= 739.0
AND p.FavoriteCount >= 5.0
AND pl.CreationDate >= 666
AND u.CreationDate >= 315

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;