SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 113
AND ph.CreationDate >= 1288
AND u.CreationDate >= 668
AND u.CreationDate <= 1473

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;