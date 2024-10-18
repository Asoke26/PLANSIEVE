SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 33
AND v.VoteTypeId = 15
AND c.CreationDate >= 577
AND v.CreationDate <= 935

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;