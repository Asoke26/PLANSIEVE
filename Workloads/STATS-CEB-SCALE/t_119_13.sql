SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 69
AND ph.CreationDate >= 93
AND u.CreationDate >= 240
AND u.CreationDate <= 1258

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;