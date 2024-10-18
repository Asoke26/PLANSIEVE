SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 15
AND v.VoteTypeId = 5
AND c.CreationDate >= 298
AND v.CreationDate <= 370

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;