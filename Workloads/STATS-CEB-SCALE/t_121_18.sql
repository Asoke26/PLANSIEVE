SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.PostTypeId = 1
AND ph.CreationDate >= 256
AND ph.CreationDate <= 920

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;