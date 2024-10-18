SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 59
AND p.Score <= 102
AND p.AnswerCount >= 1.0
AND p.AnswerCount <= 12.0
AND p.CommentCount >= 1
AND p.CommentCount <= 37
AND p.FavoriteCount <= 29.0
AND c.CreationDate <= 1049
AND pl.CreationDate >= 290
AND pl.CreationDate <= 728
AND p.CreationDate >= 229
AND p.CreationDate <= 1469

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;