SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 78.0
AND u.Views >= 973
AND u.UpVotes >= 236
AND ph.CreationDate >= 1184
AND u.CreationDate >= 380
AND u.CreationDate <= 632

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;