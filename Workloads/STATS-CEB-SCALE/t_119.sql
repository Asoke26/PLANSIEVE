SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score>=0
AND ph.CreationDate>=27
AND u.CreationDate>=35
AND u.CreationDate<=1541

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;