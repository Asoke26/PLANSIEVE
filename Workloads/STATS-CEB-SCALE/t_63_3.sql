SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 23
AND p.FavoriteCount <= 18.0
AND u.Reputation >= 5859
AND u.DownVotes >= 19
AND c.CreationDate <= 1274
AND pl.CreationDate >= 1124
AND pl.CreationDate <= 1402
AND ph.CreationDate >= 591
AND ph.CreationDate <= 924
AND v.CreationDate >= 796

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;