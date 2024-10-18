SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 29
AND v.VoteTypeId = 8
AND c.CreationDate >= 722
AND v.CreationDate <= 1484

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;