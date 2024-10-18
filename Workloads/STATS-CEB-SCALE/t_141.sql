SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b,
users u
WHERE c.Score=0
AND p.PostTypeId=1
AND p.AnswerCount>=0
AND p.CommentCount>=0
AND p.CommentCount<=14
AND c.CreationDate>=34
AND pl.CreationDate>=127
AND pl.CreationDate<=1535
AND ph.CreationDate<=1542
AND v.CreationDate>=29
AND v.CreationDate<=1545

AND p.Id = pl.RelatedPostId
AND b.UserId = u.Id
AND c.UserId = u.Id
AND p.Id = v.PostId
AND p.Id = c.PostId
AND p.Id = ph.PostId;