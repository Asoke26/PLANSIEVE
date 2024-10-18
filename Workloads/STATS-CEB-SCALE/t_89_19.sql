SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 80.0
AND u.Views >= 209
AND u.UpVotes >= 358
AND ph.CreationDate >= 1498
AND u.CreationDate >= 582
AND u.CreationDate <= 1431

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;