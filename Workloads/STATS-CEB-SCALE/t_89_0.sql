SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 63.0
AND u.Views >= 160
AND u.UpVotes >= 69
AND ph.CreationDate >= 1283
AND u.CreationDate >= 241
AND u.CreationDate <= 1265

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;