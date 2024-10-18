SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
votes v
WHERE p.Score >= 21
AND v.VoteTypeId = 2
AND c.CreationDate >= 719
AND v.CreationDate <= 401

AND p.Id = c.PostId
AND c.PostId = pl.PostId
AND pl.PostId = v.PostId;