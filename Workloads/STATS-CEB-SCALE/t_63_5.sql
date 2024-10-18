SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 17
AND p.FavoriteCount <= 60.0
AND u.Reputation >= 52
AND u.DownVotes >= 91
AND c.CreationDate <= 909
AND pl.CreationDate >= 485
AND pl.CreationDate <= 1234
AND ph.CreationDate >= 572
AND ph.CreationDate <= 1325
AND v.CreationDate >= 1432

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;