SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 7
AND p.FavoriteCount <= 56.0
AND u.Reputation >= 935
AND u.DownVotes >= 48
AND c.CreationDate <= 1065
AND pl.CreationDate >= 331
AND pl.CreationDate <= 745
AND ph.CreationDate >= 420
AND ph.CreationDate <= 568
AND v.CreationDate >= 1286

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;