SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 42.0
AND u.Views >= 331
AND u.UpVotes >= 292
AND ph.CreationDate >= 775
AND u.CreationDate >= 149
AND u.CreationDate <= 904

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;