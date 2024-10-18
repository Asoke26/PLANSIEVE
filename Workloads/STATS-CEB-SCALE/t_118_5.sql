SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 34
AND p.ViewCount >= 203.0
AND p.ViewCount <= 1830.0
AND u.Reputation >= 2031
AND u.Reputation <= 5837
AND b.Date >= 38

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;