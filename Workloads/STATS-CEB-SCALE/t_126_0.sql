SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE c.Score = 4
AND p.FavoriteCount >= 35.0
AND pl.LinkTypeId = 1
AND v.VoteTypeId = 2
AND p.CreationDate >= 28
AND p.CreationDate <= 714
AND pl.CreationDate >= 1063

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;