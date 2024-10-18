SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 34
AND p.ViewCount >= 1528.0
AND p.ViewCount <= 8826.0
AND u.Reputation >= 53
AND u.Reputation <= 482
AND b.Date >= 1066

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;