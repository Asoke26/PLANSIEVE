SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 36.0
AND u.Views >= 186
AND u.UpVotes >= 55
AND ph.CreationDate >= 483
AND u.CreationDate >= 95
AND u.CreationDate <= 791

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;