SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 9
AND p.FavoriteCount <= 9.0
AND u.Reputation >= 17791
AND u.DownVotes >= 113
AND c.CreationDate <= 783
AND pl.CreationDate >= 300
AND pl.CreationDate <= 1006
AND ph.CreationDate >= 125
AND ph.CreationDate <= 1154
AND v.CreationDate >= 1214

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;