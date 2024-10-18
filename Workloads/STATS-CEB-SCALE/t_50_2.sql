SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 30
AND p.ViewCount >= 171.0
AND p.ViewCount <= 2350.0
AND ph.PostHistoryTypeId = 3
AND u.Views >= 86
AND u.Views <= 147
AND c.CreationDate >= 844
AND c.CreationDate <= 1110
AND b.Date >= 323

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;