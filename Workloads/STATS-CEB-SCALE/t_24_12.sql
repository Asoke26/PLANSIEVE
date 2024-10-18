SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 48
AND v.VoteTypeId = 3
AND c.CreationDate >= 858
AND v.CreationDate <= 602

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;