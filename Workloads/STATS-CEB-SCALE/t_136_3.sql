SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 15
AND p.Score <= 87
AND p.AnswerCount >= 0.0
AND p.AnswerCount <= 21.0
AND p.CommentCount >= 5
AND p.CommentCount <= 12
AND p.FavoriteCount <= 40.0
AND c.CreationDate <= 669
AND pl.CreationDate >= 1145
AND pl.CreationDate <= 1408
AND p.CreationDate >= 580
AND p.CreationDate <= 673

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;