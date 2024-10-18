SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 94
AND v.VoteTypeId = 2
AND c.CreationDate >= 1113
AND v.CreationDate <= 171

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;