SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 14.0
AND u.Views >= 456
AND u.UpVotes >= 98
AND ph.CreationDate >= 1477
AND u.CreationDate >= 221
AND u.CreationDate <= 996

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;