SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 2
AND p.ViewCount >= 372.0
AND p.ViewCount <= 1194.0
AND u.Reputation >= 392
AND u.Reputation <= 631
AND b.Date >= 558

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;