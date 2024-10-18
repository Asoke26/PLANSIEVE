SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 75
AND p.ViewCount >= 886.0
AND p.ViewCount <= 7974.0
AND ph.PostHistoryTypeId = 16
AND u.Views >= 343
AND u.Views <= 813
AND c.CreationDate >= 300
AND c.CreationDate <= 1481
AND b.Date >= 996

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;