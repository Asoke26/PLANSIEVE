SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount <= 61.0
AND u.Views >= 89
AND u.UpVotes >= 578
AND ph.CreationDate >= 697
AND u.CreationDate >= 634
AND u.CreationDate <= 800

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;