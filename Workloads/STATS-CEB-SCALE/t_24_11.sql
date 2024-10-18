SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 71
AND v.VoteTypeId = 2
AND c.CreationDate >= 961
AND v.CreationDate <= 712

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;