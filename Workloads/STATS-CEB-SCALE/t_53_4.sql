SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 5
AND p.ViewCount >= 889.0
AND p.FavoriteCount >= 0.0
AND pl.CreationDate >= 890
AND u.CreationDate >= 944

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;