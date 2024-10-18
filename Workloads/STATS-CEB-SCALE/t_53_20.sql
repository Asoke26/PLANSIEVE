SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 10
AND p.ViewCount >= 53.0
AND p.FavoriteCount >= 1.0
AND pl.CreationDate >= 935
AND u.CreationDate >= 583

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;