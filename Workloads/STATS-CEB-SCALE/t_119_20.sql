SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 87
AND ph.CreationDate >= 28
AND u.CreationDate >= 246
AND u.CreationDate <= 620

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;