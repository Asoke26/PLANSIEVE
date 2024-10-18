SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 13
AND p.ViewCount >= 1586.0
AND p.FavoriteCount >= 5.0
AND pl.CreationDate >= 421
AND u.CreationDate >= 317

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;