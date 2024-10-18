SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
badges b
WHERE v.CreationDate >= 743
AND v.CreationDate <= 978

AND p.Id = c.PostId
AND p.Id = pl.RelatedPostId
AND p.Id = ph.PostId
AND p.Id = v.PostId
AND b.UserId = c.UserId;