SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 10.0
AND u.Views >= 96
AND u.UpVotes >= 328
AND ph.CreationDate >= 1332
AND u.CreationDate >= 545
AND u.CreationDate <= 1423

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;