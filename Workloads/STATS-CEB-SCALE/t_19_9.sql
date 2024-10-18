SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 792
AND u.Reputation <= 2091
AND u.Views >= 516
AND ph.CreationDate <= 1296
AND p.CreationDate >= 485
AND p.CreationDate <= 902

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;