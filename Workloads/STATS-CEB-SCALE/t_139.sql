SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score=0
AND p.ViewCount>=0
AND p.AnswerCount<=5
AND p.CommentCount<=12
AND p.FavoriteCount>=0
AND pl.LinkTypeId=1
AND pl.CreationDate>=239
AND pl.CreationDate<=1532
AND v.CreationDate>=27
AND v.CreationDate<=1531
AND b.Date>=45
AND b.Date<=1543

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;