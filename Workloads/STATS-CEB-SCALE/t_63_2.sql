SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 0
AND p.FavoriteCount <= 5.0
AND u.Reputation >= 644
AND u.DownVotes >= 163
AND c.CreationDate <= 1516
AND pl.CreationDate >= 463
AND pl.CreationDate <= 1058
AND ph.CreationDate >= 134
AND ph.CreationDate <= 1326
AND v.CreationDate >= 1337

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;