SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 56
AND u.Reputation <= 8164
AND u.Views >= 456
AND ph.CreationDate <= 1017
AND p.CreationDate >= 223
AND p.CreationDate <= 742

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;