SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 25.0
AND u.Views >= 29
AND u.UpVotes >= 475
AND ph.CreationDate >= 811
AND u.CreationDate >= 289
AND u.CreationDate <= 1059

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;