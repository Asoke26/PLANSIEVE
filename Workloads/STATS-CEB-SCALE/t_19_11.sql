SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 63
AND u.Reputation <= 1525
AND u.Views >= 1147
AND ph.CreationDate <= 1516
AND p.CreationDate >= 349
AND p.CreationDate <= 738

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;