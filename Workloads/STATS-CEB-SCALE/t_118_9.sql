SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 9
AND p.ViewCount >= 298.0
AND p.ViewCount <= 804.0
AND u.Reputation >= 388
AND u.Reputation <= 5807
AND b.Date >= 397

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;