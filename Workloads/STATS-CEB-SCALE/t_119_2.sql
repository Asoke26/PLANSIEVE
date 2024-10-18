SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 113
AND ph.CreationDate >= 31
AND u.CreationDate >= 533
AND u.CreationDate <= 1528

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;