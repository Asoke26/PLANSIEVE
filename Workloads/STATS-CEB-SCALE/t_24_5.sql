SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 6
AND v.VoteTypeId = 8
AND c.CreationDate >= 662
AND v.CreationDate <= 771

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;