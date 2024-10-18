SELECT COUNT(*)
 FROM comments c,
postLinks pl,
posts p,
users u,
badges b
WHERE pl.LinkTypeId=1
AND p.Score>=0
AND p.Score<=23
AND p.AnswerCount>=0
AND p.AnswerCount<=4
AND p.CommentCount>=0
AND p.CommentCount<=10
AND p.FavoriteCount<=9
AND c.CreationDate<=1544
AND pl.CreationDate>=438
AND pl.CreationDate<=1499
AND p.CreationDate>=30
AND p.CreationDate<=1543

AND u.Id = b.UserId
AND u.Id = p.OwnerUserId
AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId;