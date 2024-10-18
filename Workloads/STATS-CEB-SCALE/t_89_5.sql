SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 21.0
AND u.Views >= 64
AND u.UpVotes >= 195
AND ph.CreationDate >= 438
AND u.CreationDate >= 695
AND u.CreationDate <= 1395

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;