SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 844
AND u.Reputation <= 6235
AND u.Views >= 3
AND ph.CreationDate <= 1354
AND p.CreationDate >= 871
AND p.CreationDate <= 1519

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;