SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 49
AND ph.CreationDate >= 199
AND u.CreationDate >= 397
AND u.CreationDate <= 1336

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;