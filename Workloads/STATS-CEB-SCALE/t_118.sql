SELECT COUNT(*)
 FROM postHistory ph,
posts p,
users u,
badges b
WHERE ph.PostHistoryTypeId=5
AND p.ViewCount>=0
AND p.ViewCount<=2024
AND u.Reputation>=1
AND u.Reputation<=750
AND b.Date>=28

AND b.UserId = u.Id
AND p.OwnerUserId = u.Id
AND ph.UserId = u.Id;