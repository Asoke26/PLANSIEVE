SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND p.ViewCount >= 1163.0
AND p.ViewCount <= 2993.0
AND u.Reputation >= 387
AND u.Reputation <= 883
AND b.Date >= 1120

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;