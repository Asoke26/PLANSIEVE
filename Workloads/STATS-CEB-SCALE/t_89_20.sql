SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 34.0
AND u.Views >= 103
AND u.UpVotes >= 228
AND ph.CreationDate >= 1335
AND u.CreationDate >= 159
AND u.CreationDate <= 855

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;