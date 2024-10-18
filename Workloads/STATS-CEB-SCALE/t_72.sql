SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE p.Score>=-1
AND p.ViewCount>=0
AND p.CommentCount<=9
AND v.VoteTypeId=15
AND c.CreationDate>=30
AND ph.CreationDate>=90
AND ph.CreationDate<=1507

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;