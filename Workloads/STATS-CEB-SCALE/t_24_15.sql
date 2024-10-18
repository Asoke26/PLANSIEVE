SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 53
AND v.VoteTypeId = 5
AND c.CreationDate >= 1178
AND v.CreationDate <= 31

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;