SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 1
AND p.FavoriteCount <= 40.0
AND u.Reputation >= 583
AND u.DownVotes >= 48
AND c.CreationDate <= 1105
AND pl.CreationDate >= 482
AND pl.CreationDate <= 1046
AND ph.CreationDate >= 689
AND ph.CreationDate <= 748
AND v.CreationDate >= 1430

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;