SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 1645
AND u.Reputation <= 5837
AND u.Views >= 126
AND ph.CreationDate <= 1323
AND p.CreationDate >= 1277
AND p.CreationDate <= 1450

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;