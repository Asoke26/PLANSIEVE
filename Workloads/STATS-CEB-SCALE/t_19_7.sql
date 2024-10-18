SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 470
AND u.Reputation <= 8814
AND u.Views >= 41
AND ph.CreationDate <= 1271
AND p.CreationDate >= 70
AND p.CreationDate <= 1289

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;