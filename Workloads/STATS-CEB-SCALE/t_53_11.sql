SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 68
AND p.ViewCount >= 5550.0
AND p.FavoriteCount >= 42.0
AND pl.CreationDate >= 108
AND u.CreationDate >= 65

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;