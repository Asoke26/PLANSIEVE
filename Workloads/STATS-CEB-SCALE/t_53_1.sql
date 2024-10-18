SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 87
AND p.ViewCount >= 3220.0
AND p.FavoriteCount >= 63.0
AND pl.CreationDate >= 802
AND u.CreationDate >= 165

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;