SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 2
AND p.ViewCount >= 3279.0
AND p.ViewCount <= 5576.0
AND u.Reputation >= 418
AND u.Reputation <= 3536
AND b.Date >= 1520

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;