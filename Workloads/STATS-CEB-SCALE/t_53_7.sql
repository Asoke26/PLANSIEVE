SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 30
AND p.ViewCount >= 9741.0
AND p.FavoriteCount >= 35.0
AND pl.CreationDate >= 643
AND u.CreationDate >= 868

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;