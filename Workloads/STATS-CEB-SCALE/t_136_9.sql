SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId = 1
AND p.Score >= 36
AND p.Score <= 65
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 23.0
AND p.CommentCount >= 2
AND p.CommentCount <= 4
AND p.FavoriteCount <= 23.0
AND c.CreationDate <= 216
AND pl.CreationDate >= 126
AND pl.CreationDate <= 1272
AND p.CreationDate >= 148
AND p.CreationDate <= 153

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;