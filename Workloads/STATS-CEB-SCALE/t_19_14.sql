SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 493
AND u.Reputation <= 678
AND u.Views >= 5
AND ph.CreationDate <= 1512
AND p.CreationDate >= 197
AND p.CreationDate <= 953

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;