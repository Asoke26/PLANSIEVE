SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 127.0
AND u.Views >= 156
AND u.UpVotes >= 205
AND ph.CreationDate >= 975
AND u.CreationDate >= 1084
AND u.CreationDate <= 1497

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;