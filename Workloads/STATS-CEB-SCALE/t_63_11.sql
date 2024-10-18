SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 5
AND p.FavoriteCount <= 113.0
AND u.Reputation >= 40
AND u.DownVotes >= 24
AND c.CreationDate <= 1317
AND pl.CreationDate >= 134
AND pl.CreationDate <= 1042
AND ph.CreationDate >= 660
AND ph.CreationDate <= 1265
AND v.CreationDate >= 275

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;