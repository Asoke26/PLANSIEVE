SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.PostTypeId = 6
AND ph.CreationDate >= 220
AND ph.CreationDate <= 637

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;