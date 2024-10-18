SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 7
AND p.ViewCount >= 1611.0
AND p.AnswerCount <= 19.0
AND p.CommentCount <= 3
AND p.FavoriteCount >= 2.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 87
AND pl.CreationDate <= 1438
AND v.CreationDate >= 170
AND v.CreationDate <= 430
AND b.Date >= 504
AND b.Date <= 943

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;