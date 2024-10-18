SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 68
AND ph.CreationDate >= 83
AND u.CreationDate >= 721
AND u.CreationDate <= 1388

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;