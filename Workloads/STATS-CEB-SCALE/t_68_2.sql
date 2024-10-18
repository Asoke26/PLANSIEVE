SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE c.Score = 6
AND p.Score <= 69
AND p.ViewCount <= 2467.0
AND pl.LinkTypeId = 3
AND v.CreationDate <= 1310

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;