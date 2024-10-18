SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= -13
AND p.Score <= 19
AND p.AnswerCount >= 5.0
AND p.AnswerCount <= 10.0
AND p.CommentCount >= 7
AND p.CommentCount <= 28
AND p.FavoriteCount <= 17.0
AND c.CreationDate <= 1475
AND pl.CreationDate >= 444
AND pl.CreationDate <= 524
AND p.CreationDate >= 280
AND p.CreationDate <= 1258

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;