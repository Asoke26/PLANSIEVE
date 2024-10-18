SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND p.ViewCount >= 154.0
AND p.ViewCount <= 2611.0
AND u.Reputation >= 1177
AND u.Reputation <= 5442
AND b.Date >= 1354

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;