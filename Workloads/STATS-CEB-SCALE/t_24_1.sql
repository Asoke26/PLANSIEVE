SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 184
AND v.VoteTypeId = 8
AND c.CreationDate >= 754
AND v.CreationDate <= 1485

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;