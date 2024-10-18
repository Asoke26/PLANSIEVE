SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u
WHERE u.Reputation >= 498
AND u.Reputation <= 2052
AND u.Views >= 585
AND ph.CreationDate <= 1328
AND p.CreationDate >= 406
AND p.CreationDate <= 476

AND ph.PostId = p.Id
AND p.OwnerUserId = u.Id;