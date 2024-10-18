SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 10
AND p.ViewCount >= 4754.0
AND p.AnswerCount <= 12.0
AND p.CommentCount <= 7
AND p.FavoriteCount >= 26.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 395
AND pl.CreationDate <= 425
AND v.CreationDate >= 13
AND v.CreationDate <= 451
AND b.Date >= 1187
AND b.Date <= 1339

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;