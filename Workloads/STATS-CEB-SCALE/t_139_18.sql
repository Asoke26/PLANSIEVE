SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 14
AND p.ViewCount >= 224.0
AND p.AnswerCount <= 58.0
AND p.CommentCount <= 9
AND p.FavoriteCount >= 88.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 996
AND pl.CreationDate <= 1394
AND v.CreationDate >= 668
AND v.CreationDate <= 1257
AND b.Date >= 565
AND b.Date <= 939

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;