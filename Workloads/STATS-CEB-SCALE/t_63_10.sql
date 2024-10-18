SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 7
AND p.FavoriteCount <= 43.0
AND u.Reputation >= 459
AND u.DownVotes >= 41
AND c.CreationDate <= 598
AND pl.CreationDate >= 263
AND pl.CreationDate <= 494
AND ph.CreationDate >= 638
AND ph.CreationDate <= 1165
AND v.CreationDate >= 845

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;