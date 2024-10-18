SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 5
AND p.FavoriteCount <= 13.0
AND u.Reputation >= 121
AND u.DownVotes >= 91
AND c.CreationDate <= 439
AND pl.CreationDate >= 421
AND pl.CreationDate <= 880
AND ph.CreationDate >= 372
AND ph.CreationDate <= 1075
AND v.CreationDate >= 851

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;