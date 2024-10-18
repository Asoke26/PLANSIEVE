SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score <= 83
AND p.ViewCount <= 751.0
AND p.AnswerCount >= 2.0
AND p.AnswerCount <= 21.0
AND p.CommentCount <= 16
AND p.FavoriteCount >= 16.0
AND v.VoteTypeId = 2
AND c.CreationDate >= 512
AND c.CreationDate <= 783
AND v.CreationDate >= 1293
AND b.Date >= 1221

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;