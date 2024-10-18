SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 12
AND v.VoteTypeId = 2
AND c.CreationDate >= 1366
AND v.CreationDate <= 1127

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;