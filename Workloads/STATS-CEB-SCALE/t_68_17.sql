SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE c.Score = 28
AND p.Score <= 81
AND p.ViewCount <= 2440.0
AND pl.LinkTypeId = 1
AND v.CreationDate <= 628

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;