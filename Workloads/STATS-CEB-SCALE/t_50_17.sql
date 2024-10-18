SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 39
AND p.ViewCount >= 2263.0
AND p.ViewCount <= 37288.0
AND ph.PostHistoryTypeId = 33
AND u.Views >= 117
AND u.Views <= 3320
AND c.CreationDate >= 120
AND c.CreationDate <= 131
AND b.Date >= 725

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;