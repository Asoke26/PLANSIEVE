SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 51
AND p.ViewCount >= 447.0
AND p.ViewCount <= 3293.0
AND ph.PostHistoryTypeId = 1
AND u.Views >= 61
AND u.Views <= 591
AND c.CreationDate >= 1086
AND c.CreationDate <= 1143
AND b.Date >= 436

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;