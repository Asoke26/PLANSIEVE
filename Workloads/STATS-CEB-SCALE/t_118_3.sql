SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 5
AND p.ViewCount >= 494.0
AND p.ViewCount <= 1993.0
AND u.Reputation >= 3174
AND u.Reputation <= 7227
AND b.Date >= 955

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;