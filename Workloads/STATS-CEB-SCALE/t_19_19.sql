SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 107
AND u.Reputation <= 44152
AND u.Views >= 112
AND ph.CreationDate <= 196
AND p.CreationDate >= 127
AND p.CreationDate <= 520

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;