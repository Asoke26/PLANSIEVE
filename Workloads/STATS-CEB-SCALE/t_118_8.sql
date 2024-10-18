SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND p.ViewCount >= 2722.0
AND p.ViewCount <= 14863.0
AND u.Reputation >= 53
AND u.Reputation <= 2496
AND b.Date >= 672

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;