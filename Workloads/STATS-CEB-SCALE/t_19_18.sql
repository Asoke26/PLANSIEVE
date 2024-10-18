SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 236
AND u.Reputation <= 5309
AND u.Views >= 1604
AND ph.CreationDate <= 724
AND p.CreationDate >= 421
AND p.CreationDate <= 1292

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;