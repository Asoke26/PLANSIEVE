SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 18.0
AND u.Views >= 16
AND u.UpVotes >= 185
AND ph.CreationDate >= 1174
AND u.CreationDate >= 354
AND u.CreationDate <= 540

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;