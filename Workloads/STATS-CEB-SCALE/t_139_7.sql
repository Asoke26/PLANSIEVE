SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 10
AND p.ViewCount >= 2712.0
AND p.AnswerCount <= 7.0
AND p.CommentCount <= 12
AND p.FavoriteCount >= 26.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 377
AND pl.CreationDate <= 1231
AND v.CreationDate >= 1292
AND v.CreationDate <= 1445
AND b.Date >= 80
AND b.Date <= 1078

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;