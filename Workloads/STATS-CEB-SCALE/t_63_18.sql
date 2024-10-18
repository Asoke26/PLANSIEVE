SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 28
AND p.FavoriteCount <= 61.0
AND u.Reputation >= 798
AND u.DownVotes >= 1
AND c.CreationDate <= 1004
AND pl.CreationDate >= 203
AND pl.CreationDate <= 1447
AND ph.CreationDate >= 1025
AND ph.CreationDate <= 1480
AND v.CreationDate >= 843

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;