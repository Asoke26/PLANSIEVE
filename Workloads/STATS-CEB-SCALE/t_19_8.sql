SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 455
AND u.Reputation <= 6906
AND u.Views >= 106
AND ph.CreationDate <= 837
AND p.CreationDate >= 140
AND p.CreationDate <= 1318

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;