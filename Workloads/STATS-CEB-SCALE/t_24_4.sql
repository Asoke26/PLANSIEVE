SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 146
AND v.VoteTypeId = 15
AND c.CreationDate >= 145
AND v.CreationDate <= 1494

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;