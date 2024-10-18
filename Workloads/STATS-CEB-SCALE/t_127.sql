SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v
WHERE p.Score<=44
AND p.FavoriteCount>=0
AND p.FavoriteCount<=3
AND pl.LinkTypeId=1
AND c.CreationDate>=40
AND p.CreationDate>=50
AND p.CreationDate<=1534
AND pl.CreationDate<=1511
AND ph.CreationDate>=90
AND v.CreationDate<=1542

AND p.Id = pl.PostId
AND p.Id = v.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId;