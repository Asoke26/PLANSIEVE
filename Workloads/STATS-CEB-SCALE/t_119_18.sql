SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 36
AND ph.CreationDate >= 1097
AND u.CreationDate >= 960
AND u.CreationDate <= 1506

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;