SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 350
AND u.Reputation <= 1423
AND u.Views >= 134
AND ph.CreationDate <= 682
AND p.CreationDate >= 498
AND p.CreationDate <= 739

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;