SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 1
AND p.ViewCount >= 1700.0
AND p.AnswerCount <= 24.0
AND p.CommentCount <= 7
AND p.FavoriteCount >= 60.0
AND pl.LinkTypeId = 3
AND pl.CreationDate >= 604
AND pl.CreationDate <= 1065
AND v.CreationDate >= 4
AND v.CreationDate <= 645
AND b.Date >= 346
AND b.Date <= 1160

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;