SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE p.FavoriteCount<=5
AND u.Views>=0
AND u.UpVotes>=0
AND ph.CreationDate>=332
AND u.CreationDate>=158
AND u.CreationDate<=1518

AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;