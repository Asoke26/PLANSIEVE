SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 41
AND p.ViewCount >= 1624.0
AND p.ViewCount <= 5947.0
AND ph.PostHistoryTypeId = 3
AND u.Views >= 173
AND u.Views <= 7357
AND c.CreationDate >= 48
AND c.CreationDate <= 1368
AND b.Date >= 1284

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;