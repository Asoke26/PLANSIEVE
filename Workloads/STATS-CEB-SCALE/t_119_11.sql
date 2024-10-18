SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 86
AND ph.CreationDate >= 1026
AND u.CreationDate >= 976
AND u.CreationDate <= 1378

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;