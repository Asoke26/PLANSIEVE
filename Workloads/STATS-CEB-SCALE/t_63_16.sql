SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 18
AND p.FavoriteCount <= 74.0
AND u.Reputation >= 822
AND u.DownVotes >= 143
AND c.CreationDate <= 493
AND pl.CreationDate >= 203
AND pl.CreationDate <= 1301
AND ph.CreationDate >= 241
AND ph.CreationDate <= 856
AND v.CreationDate >= 475

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;