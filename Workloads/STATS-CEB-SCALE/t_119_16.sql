SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 36
AND ph.CreationDate >= 1261
AND u.CreationDate >= 1289
AND u.CreationDate <= 1522

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;