SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 6
AND p.ViewCount >= 1538.0
AND p.AnswerCount <= 28.0
AND p.CommentCount <= 25
AND p.FavoriteCount >= 12.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 1201
AND pl.CreationDate <= 1359
AND v.CreationDate >= 417
AND v.CreationDate <= 475
AND b.Date >= 983
AND b.Date <= 1275

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;