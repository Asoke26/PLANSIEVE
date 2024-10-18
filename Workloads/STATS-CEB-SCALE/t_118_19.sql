SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 9
AND p.ViewCount >= 238.0
AND p.ViewCount <= 1670.0
AND u.Reputation >= 121
AND u.Reputation <= 330
AND b.Date >= 1465

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;