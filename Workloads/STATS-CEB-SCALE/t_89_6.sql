SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 15.0
AND u.Views >= 105
AND u.UpVotes >= 2496
AND ph.CreationDate >= 1393
AND u.CreationDate >= 47
AND u.CreationDate <= 278

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;