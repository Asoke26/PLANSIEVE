SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 51
AND p.ViewCount >= 1616.0
AND p.FavoriteCount >= 40.0
AND pl.CreationDate >= 1385
AND u.CreationDate >= 198

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;