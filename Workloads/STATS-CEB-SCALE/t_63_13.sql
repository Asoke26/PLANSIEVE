SELECT COUNT(*)
 FROM comments c,
posts p,
postLinks pl,
postHistory ph,
votes v,
users u
WHERE p.PostTypeId = 1
AND p.Score = 9
AND p.FavoriteCount <= 30.0
AND u.Reputation >= 348
AND u.DownVotes >= 55
AND c.CreationDate <= 939
AND pl.CreationDate >= 907
AND pl.CreationDate <= 1229
AND ph.CreationDate >= 514
AND ph.CreationDate <= 1004
AND v.CreationDate >= 836

AND p.Id = pl.PostId
AND p.Id = ph.PostId
AND p.Id = c.PostId
AND u.Id = c.UserId
AND u.Id = v.UserId;