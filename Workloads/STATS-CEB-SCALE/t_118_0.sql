SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND p.ViewCount >= 1236.0
AND p.ViewCount <= 4233.0
AND u.Reputation >= 738
AND u.Reputation <= 10476
AND b.Date >= 654

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;