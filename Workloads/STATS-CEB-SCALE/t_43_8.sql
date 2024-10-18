SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE p.Score >= 105

AND u.Id = p.OwnerUserId
AND p.OwnerUserId = ph.UserId
AND ph.UserId = b.UserId;