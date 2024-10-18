SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE c.Score = 6
AND p.FavoriteCount >= 0.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND p.CreationDate >= 573
AND p.CreationDate <= 1246
AND pl.CreationDate >= 294

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;