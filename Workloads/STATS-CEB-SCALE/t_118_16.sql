SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND p.ViewCount >= 1059.0
AND p.ViewCount <= 2573.0
AND u.Reputation >= 162
AND u.Reputation <= 166
AND b.Date >= 1066

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;