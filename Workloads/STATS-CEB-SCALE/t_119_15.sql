SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 23
AND ph.CreationDate >= 411
AND u.CreationDate >= 458
AND u.CreationDate <= 948

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;