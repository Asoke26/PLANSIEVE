SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 7
AND p.ViewCount >= 1227.0
AND p.FavoriteCount >= 6.0
AND pl.CreationDate >= 143
AND u.CreationDate >= 441

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;