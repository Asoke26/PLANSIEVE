SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 13
AND v.VoteTypeId = 11
AND c.CreationDate >= 970
AND v.CreationDate <= 548

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;