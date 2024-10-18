SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 63.0
AND u.Views >= 120
AND u.UpVotes >= 1316
AND ph.CreationDate >= 1465
AND u.CreationDate >= 651
AND u.CreationDate <= 1242

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;