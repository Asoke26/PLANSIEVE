SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 31
AND p.ViewCount >= 2274.0
AND p.FavoriteCount >= 9.0
AND pl.CreationDate >= 1192
AND u.CreationDate >= 1246

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;