SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score <= 38
AND p.ViewCount <= 3002.0
AND p.AnswerCount >= 1.0
AND p.AnswerCount <= 3.0
AND p.CommentCount <= 26
AND p.FavoriteCount >= 22.0
AND v.VoteTypeId = 15
AND c.CreationDate >= 433
AND c.CreationDate <= 839
AND v.CreationDate >= 389
AND b.Date >= 1518

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;