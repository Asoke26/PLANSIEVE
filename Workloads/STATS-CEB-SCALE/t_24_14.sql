SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 90
AND v.VoteTypeId = 3
AND c.CreationDate >= 436
AND v.CreationDate <= 1114

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;