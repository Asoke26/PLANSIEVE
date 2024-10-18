SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 15
AND p.FavoriteCount <= 190.0
AND u.Reputation >= 66
AND u.DownVotes >= 20
AND c.CreationDate <= 891
AND pl.CreationDate >= 794
AND pl.CreationDate <= 1308
AND ph.CreationDate >= 701
AND ph.CreationDate <= 937
AND v.CreationDate >= 468

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;