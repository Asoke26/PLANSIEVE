SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score = 3
AND p.ViewCount >= 3730.0
AND p.AnswerCount <= 16.0
AND p.CommentCount <= 16
AND p.FavoriteCount >= 27.0
AND pl.LinkTypeId = 1
AND pl.CreationDate >= 272
AND pl.CreationDate <= 376
AND v.CreationDate >= 737
AND v.CreationDate <= 772
AND b.Date >= 288
AND b.Date <= 1213

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;