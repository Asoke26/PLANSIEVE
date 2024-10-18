SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 20
AND ph.CreationDate >= 1457
AND u.CreationDate >= 228
AND u.CreationDate <= 840

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;