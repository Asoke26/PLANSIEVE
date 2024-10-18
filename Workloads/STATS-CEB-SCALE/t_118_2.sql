SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND p.ViewCount >= 879.0
AND p.ViewCount <= 1795.0
AND u.Reputation >= 137
AND u.Reputation <= 1272
AND b.Date >= 1379

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;