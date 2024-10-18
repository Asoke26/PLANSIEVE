SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 1
AND p.FavoriteCount <= 23.0
AND u.Reputation >= 523
AND u.DownVotes >= 44
AND c.CreationDate <= 1187
AND pl.CreationDate >= 367
AND pl.CreationDate <= 1238
AND ph.CreationDate >= 135
AND ph.CreationDate <= 1533
AND v.CreationDate >= 556

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;