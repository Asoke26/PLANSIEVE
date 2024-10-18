SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= -13
AND p.Score <= 68
AND p.AnswerCount >= 2.0
AND p.AnswerCount <= 15.0
AND p.CommentCount >= 13
AND p.CommentCount <= 22
AND p.FavoriteCount <= 71.0
AND c.CreationDate <= 983
AND pl.CreationDate >= 218
AND pl.CreationDate <= 1332
AND p.CreationDate >= 66
AND p.CreationDate <= 1515

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;