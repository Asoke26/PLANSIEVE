SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 47.0
AND u.Views >= 378
AND u.UpVotes >= 144
AND ph.CreationDate >= 141
AND u.CreationDate >= 909
AND u.CreationDate <= 1310

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;