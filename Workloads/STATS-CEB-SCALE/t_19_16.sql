SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 84
AND u.Reputation <= 193
AND u.Views >= 87
AND ph.CreationDate <= 1441
AND p.CreationDate >= 670
AND p.CreationDate <= 935

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;