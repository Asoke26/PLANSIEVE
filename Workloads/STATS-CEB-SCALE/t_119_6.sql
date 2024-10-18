SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 35
AND ph.CreationDate >= 1415
AND u.CreationDate >= 260
AND u.CreationDate <= 1541

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;