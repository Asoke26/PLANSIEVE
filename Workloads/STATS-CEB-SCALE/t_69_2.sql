SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score <= 57
AND p.ViewCount <= 3673.0
AND p.AnswerCount >= 5.0
AND p.AnswerCount <= 16.0
AND p.CommentCount <= 33
AND p.FavoriteCount >= 21.0
AND v.VoteTypeId = 5
AND c.CreationDate >= 69
AND c.CreationDate <= 1508
AND v.CreationDate >= 758
AND b.Date >= 718

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;