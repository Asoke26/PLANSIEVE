SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 350
AND u.Reputation <= 521
AND u.Views >= 382
AND ph.CreationDate <= 1489
AND p.CreationDate >= 161
AND p.CreationDate <= 608

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;