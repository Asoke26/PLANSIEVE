SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score <= 28
AND p.ViewCount <= 12242.0
AND p.AnswerCount >= 7.0
AND p.AnswerCount <= 8.0
AND p.CommentCount <= 5
AND p.FavoriteCount >= 2.0
AND v.VoteTypeId = 5
AND c.CreationDate >= 813
AND c.CreationDate <= 1422
AND v.CreationDate >= 921
AND b.Date >= 530

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;