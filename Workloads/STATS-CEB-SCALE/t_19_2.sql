SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 259
AND u.Reputation <= 8814
AND u.Views >= 29
AND ph.CreationDate <= 626
AND p.CreationDate >= 245
AND p.CreationDate <= 375

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;