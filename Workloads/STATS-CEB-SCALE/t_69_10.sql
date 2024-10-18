SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score <= 51
AND p.ViewCount <= 2638.0
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 8.0
AND p.CommentCount <= 2
AND p.FavoriteCount >= 5.0
AND v.VoteTypeId = 15
AND c.CreationDate >= 934
AND c.CreationDate <= 1136
AND v.CreationDate >= 213
AND b.Date >= 512

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;