SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 306
AND u.Reputation <= 4701
AND u.Views >= 165
AND ph.CreationDate <= 524
AND p.CreationDate >= 62
AND p.CreationDate <= 1475

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;