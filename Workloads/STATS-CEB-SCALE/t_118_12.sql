SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND p.ViewCount >= 5338.0
AND p.ViewCount <= 5446.0
AND u.Reputation >= 187
AND u.Reputation <= 2834
AND b.Date >= 1414

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;