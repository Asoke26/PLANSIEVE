SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 1
AND p.FavoriteCount <= 9.0
AND u.Reputation >= 3015
AND u.DownVotes >= 27
AND c.CreationDate <= 1343
AND pl.CreationDate >= 468
AND pl.CreationDate <= 1225
AND ph.CreationDate >= 639
AND ph.CreationDate <= 923
AND v.CreationDate >= 889

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;