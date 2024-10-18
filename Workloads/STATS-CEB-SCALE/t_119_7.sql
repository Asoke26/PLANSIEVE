SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 99
AND ph.CreationDate >= 852
AND u.CreationDate >= 193
AND u.CreationDate <= 549

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;