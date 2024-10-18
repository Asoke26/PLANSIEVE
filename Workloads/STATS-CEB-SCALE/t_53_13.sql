SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 87
AND p.ViewCount >= 1491.0
AND p.FavoriteCount >= 34.0
AND pl.CreationDate >= 1110
AND u.CreationDate >= 189

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;