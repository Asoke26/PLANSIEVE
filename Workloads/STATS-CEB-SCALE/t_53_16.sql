SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score = 51
AND p.ViewCount >= 4010.0
AND p.FavoriteCount >= 21.0
AND pl.CreationDate >= 34
AND u.CreationDate >= 679

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;