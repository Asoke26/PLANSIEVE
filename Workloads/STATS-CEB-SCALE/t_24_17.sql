SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 36
AND v.VoteTypeId = 2
AND c.CreationDate >= 1423
AND v.CreationDate <= 915

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;