SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 55
AND ph.CreationDate >= 502
AND u.CreationDate >= 503
AND u.CreationDate <= 547

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;