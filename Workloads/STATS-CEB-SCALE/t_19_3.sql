SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 308
AND u.Reputation <= 14082
AND u.Views >= 5
AND ph.CreationDate <= 1092
AND p.CreationDate >= 50
AND p.CreationDate <= 1422

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;