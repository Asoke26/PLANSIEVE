SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score<=61
AND p.ViewCount<=3627
AND p.AnswerCount>=0
AND p.AnswerCount<=5
AND p.CommentCount<=8
AND p.FavoriteCount>=0
AND v.VoteTypeId=2
AND c.CreationDate>=34
AND c.CreationDate<=1544
AND v.CreationDate>=35
AND b.Date>=38

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;