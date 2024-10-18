SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 2
AND p.ViewCount >= 121.0
AND p.FavoriteCount >= 0.0
AND pl.CreationDate >= 500
AND u.CreationDate >= 1018

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;