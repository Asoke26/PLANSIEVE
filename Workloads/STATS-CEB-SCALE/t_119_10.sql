SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 20
AND ph.CreationDate >= 112
AND u.CreationDate >= 827
AND u.CreationDate <= 876

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;