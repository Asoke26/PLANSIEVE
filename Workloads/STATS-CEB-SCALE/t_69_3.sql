SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score <= 78
AND p.ViewCount <= 20989.0
AND p.AnswerCount >= 14.0
AND p.AnswerCount <= 21.0
AND p.CommentCount <= 15
AND p.FavoriteCount >= 0.0
AND v.VoteTypeId = 3
AND c.CreationDate >= 565
AND c.CreationDate <= 646
AND v.CreationDate >= 957
AND b.Date >= 1384

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;