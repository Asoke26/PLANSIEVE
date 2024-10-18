SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 4
AND p.ViewCount >= 21.0
AND p.ViewCount <= 2890.0
AND u.Reputation >= 680
AND u.Reputation <= 6176
AND b.Date >= 1145

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;