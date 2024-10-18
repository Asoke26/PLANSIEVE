SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 60.0
AND u.Views >= 80
AND u.UpVotes >= 347
AND ph.CreationDate >= 1335
AND u.CreationDate >= 641
AND u.CreationDate <= 1360

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;