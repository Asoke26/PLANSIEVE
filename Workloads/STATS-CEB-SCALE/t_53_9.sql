SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 39
AND p.ViewCount >= 1579.0
AND p.FavoriteCount >= 6.0
AND pl.CreationDate >= 478
AND u.CreationDate >= 231

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;