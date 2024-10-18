SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score <= 85
AND p.ViewCount <= 2694.0
AND p.AnswerCount >= 3.0
AND p.AnswerCount <= 28.0
AND p.CommentCount <= 11
AND p.FavoriteCount >= 21.0
AND v.VoteTypeId = 2
AND c.CreationDate >= 707
AND c.CreationDate <= 1486
AND v.CreationDate >= 622
AND b.Date >= 928

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;