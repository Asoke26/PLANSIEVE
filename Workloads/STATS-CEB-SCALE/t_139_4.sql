SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 23
AND p.ViewCount >= 1038.0
AND p.AnswerCount <= 9.0
AND p.CommentCount <= 41
AND p.FavoriteCount >= 45.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 64
AND pl.CreationDate <= 1125
AND v.CreationDate >= 1027
AND v.CreationDate <= 1210
AND b.Date >= 666
AND b.Date <= 1171

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;