SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 8
AND p.Score <= 48
AND p.AnswerCount >= 4.0
AND p.AnswerCount <= 16.0
AND p.CommentCount >= 1
AND p.CommentCount <= 7
AND p.FavoriteCount <= 54.0
AND c.CreationDate <= 454
AND pl.CreationDate >= 412
AND pl.CreationDate <= 1274
AND p.CreationDate >= 55
AND p.CreationDate <= 1362

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;