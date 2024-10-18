SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 16.0
AND u.Views >= 52
AND u.UpVotes >= 126
AND ph.CreationDate >= 1389
AND u.CreationDate >= 551
AND u.CreationDate <= 1100

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;