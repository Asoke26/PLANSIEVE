SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score = 65
AND p.ViewCount >= 130.0
AND p.FavoriteCount >= 16.0
AND pl.CreationDate >= 248
AND u.CreationDate >= 525

AND p.Id = pl.RelatedPostId
AND p.Id = c.PostId
AND u.Id = b.UserId
AND u.Id = p.OwnerUserId;