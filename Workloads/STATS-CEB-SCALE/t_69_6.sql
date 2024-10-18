SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score <= 55
AND p.ViewCount <= 7915.0
AND p.AnswerCount >= 16.0
AND p.AnswerCount <= 136.0
AND p.CommentCount <= 24
AND p.FavoriteCount >= 46.0
AND v.VoteTypeId = 5

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;