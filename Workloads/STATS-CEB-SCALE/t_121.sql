SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.PostTypeId=2
AND ph.CreationDate>=35
AND ph.CreationDate<=1541

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;