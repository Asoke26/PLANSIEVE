SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 50
AND p.ViewCount >= 1404.0
AND p.ViewCount <= 2367.0
AND ph.PostHistoryTypeId = 3
AND u.Views >= 164
AND u.Views <= 1225
AND c.CreationDate >= 172
AND c.CreationDate <= 233
AND b.Date >= 170

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;