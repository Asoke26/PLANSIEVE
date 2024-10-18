SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 932
AND u.Reputation <= 2481
AND u.Views >= 212
AND ph.CreationDate <= 347
AND p.CreationDate >= 119
AND p.CreationDate <= 1312

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;