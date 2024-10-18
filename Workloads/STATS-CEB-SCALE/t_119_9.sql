SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 35
AND ph.CreationDate >= 679
AND u.CreationDate >= 1106
AND u.CreationDate <= 1456

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;