SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 21
AND ph.CreationDate >= 556
AND u.CreationDate >= 777
AND u.CreationDate <= 1353

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;