SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 3
AND p.Score >= 5
AND p.Score <= 140
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 42.0
AND p.CommentCount >= 4
AND p.CommentCount <= 11
AND p.FavoriteCount <= 15.0
AND c.CreationDate <= 1479
AND pl.CreationDate >= 292
AND pl.CreationDate <= 1508
AND p.CreationDate >= 743
AND p.CreationDate <= 904

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;