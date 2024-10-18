SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 30
AND p.ViewCount >= 1476.0
AND p.AnswerCount <= 35.0
AND p.CommentCount <= 22
AND p.FavoriteCount >= 32.0
AND pl.LinkTypeId = 3
AND pl.CreationDate >= 372
AND pl.CreationDate <= 1301
AND v.CreationDate >= 695
AND v.CreationDate <= 1138
AND b.Date >= 879
AND b.Date <= 1310

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;