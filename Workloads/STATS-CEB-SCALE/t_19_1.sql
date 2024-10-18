SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 148
AND u.Reputation <= 411
AND u.Views >= 159
AND ph.CreationDate <= 1111
AND p.CreationDate >= 479
AND p.CreationDate <= 567

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;