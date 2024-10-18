SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 44.0
AND u.Views >= 655
AND u.UpVotes >= 76
AND ph.CreationDate >= 1009
AND u.CreationDate >= 1005
AND u.CreationDate <= 1392

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;