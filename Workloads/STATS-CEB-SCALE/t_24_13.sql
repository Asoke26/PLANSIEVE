SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 3
AND v.VoteTypeId = 2
AND c.CreationDate >= 166
AND v.CreationDate <= 1348

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;