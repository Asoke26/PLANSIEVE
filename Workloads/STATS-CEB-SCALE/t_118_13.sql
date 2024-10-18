SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 16
AND p.ViewCount >= 25.0
AND p.ViewCount <= 5405.0
AND u.Reputation >= 22
AND u.Reputation <= 13806
AND b.Date >= 979

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;