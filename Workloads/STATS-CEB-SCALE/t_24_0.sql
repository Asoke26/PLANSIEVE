SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 43
AND v.VoteTypeId = 3
AND c.CreationDate >= 295
AND v.CreationDate <= 797

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;