SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 229
AND u.Reputation <= 561
AND u.Views >= 156
AND ph.CreationDate <= 592
AND p.CreationDate >= 27
AND p.CreationDate <= 889

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;