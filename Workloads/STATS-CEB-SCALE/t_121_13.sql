SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.PostTypeId = 5
AND ph.CreationDate >= 572
AND ph.CreationDate <= 1309

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;