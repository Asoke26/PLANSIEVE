SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 59
AND p.ViewCount >= 5696.0
AND p.FavoriteCount >= 6.0
AND pl.CreationDate >= 636
AND u.CreationDate >= 47

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;