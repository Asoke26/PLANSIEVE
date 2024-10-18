SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 65
AND p.FavoriteCount <= 60.0
AND u.Reputation >= 1815
AND u.DownVotes >= 6
AND c.CreationDate <= 1187
AND pl.CreationDate >= 781
AND pl.CreationDate <= 1448
AND ph.CreationDate >= 50
AND ph.CreationDate <= 1233
AND v.CreationDate >= 1131

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;