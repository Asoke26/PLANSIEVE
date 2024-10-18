SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 73
AND ph.CreationDate >= 127
AND u.CreationDate >= 808
AND u.CreationDate <= 1344

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;