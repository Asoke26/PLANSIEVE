SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 18
AND ph.CreationDate >= 295
AND u.CreationDate >= 1171
AND u.CreationDate <= 1316

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;