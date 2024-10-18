SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND p.ViewCount >= 216.0
AND p.ViewCount <= 921.0
AND u.Reputation >= 107
AND u.Reputation <= 872
AND b.Date >= 379

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;