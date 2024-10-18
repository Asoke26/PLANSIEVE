SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 13
AND p.ViewCount >= 1317.0
AND p.ViewCount <= 1463.0
AND u.Reputation >= 438
AND u.Reputation <= 830
AND b.Date >= 1293

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;