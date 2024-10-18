SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= -6
AND p.Score <= 11
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 28.0
AND p.CommentCount >= 0
AND p.CommentCount <= 1
AND p.FavoriteCount <= 33.0
AND c.CreationDate <= 1287
AND pl.CreationDate >= 488
AND pl.CreationDate <= 1214
AND p.CreationDate >= 399
AND p.CreationDate <= 668

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;