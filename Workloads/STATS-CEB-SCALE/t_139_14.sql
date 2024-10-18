SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 13
AND p.ViewCount >= 1738.0
AND p.AnswerCount <= 2.0
AND p.CommentCount <= 16
AND p.FavoriteCount >= 20.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 37
AND pl.CreationDate <= 1393
AND v.CreationDate >= 437
AND v.CreationDate <= 439
AND b.Date >= 133
AND b.Date <= 223

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;