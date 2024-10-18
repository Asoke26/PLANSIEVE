SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 87
AND p.ViewCount >= 1145.0
AND p.FavoriteCount >= 29.0
AND pl.CreationDate >= 990
AND u.CreationDate >= 149

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;