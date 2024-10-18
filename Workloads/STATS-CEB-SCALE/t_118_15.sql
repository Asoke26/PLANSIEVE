SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 7
AND p.ViewCount >= 2159.0
AND p.ViewCount <= 14224.0
AND u.Reputation >= 1423
AND u.Reputation <= 6078
AND b.Date >= 1320

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;