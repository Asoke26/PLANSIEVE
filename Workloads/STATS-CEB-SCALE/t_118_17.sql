SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 13
AND p.ViewCount >= 387.0
AND p.ViewCount <= 7077.0
AND u.Reputation >= 353
AND u.Reputation <= 639
AND b.Date >= 529

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;