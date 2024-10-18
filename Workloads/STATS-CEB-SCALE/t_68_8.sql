SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE c.Score = 8
AND p.Score <= 15
AND p.ViewCount <= 9772.0
AND pl.LinkTypeId = 1
AND v.CreationDate <= 566

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;