SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 5
AND p.ViewCount >= 2291.0
AND p.ViewCount <= 8169.0
AND u.Reputation >= 60
AND u.Reputation <= 85
AND b.Date >= 1373

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;