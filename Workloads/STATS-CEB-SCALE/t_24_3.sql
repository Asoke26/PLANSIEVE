SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 41
AND v.VoteTypeId = 3
AND c.CreationDate >= 646
AND v.CreationDate <= 615

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;