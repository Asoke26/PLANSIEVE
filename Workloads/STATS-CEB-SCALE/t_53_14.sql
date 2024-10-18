SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 40
AND p.ViewCount >= 1994.0
AND p.FavoriteCount >= 10.0
AND pl.CreationDate >= 522
AND u.CreationDate >= 698

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;