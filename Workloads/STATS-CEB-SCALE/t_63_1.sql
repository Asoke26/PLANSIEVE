SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 2
AND p.FavoriteCount <= 43.0
AND u.Reputation >= 763
AND u.DownVotes >= 22
AND c.CreationDate <= 261
AND pl.CreationDate >= 52
AND pl.CreationDate <= 878
AND ph.CreationDate >= 197
AND ph.CreationDate <= 665
AND v.CreationDate >= 1048

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;