SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 108.0
AND u.Views >= 102
AND u.UpVotes >= 1160
AND ph.CreationDate >= 821
AND u.CreationDate >= 558
AND u.CreationDate <= 1076

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;