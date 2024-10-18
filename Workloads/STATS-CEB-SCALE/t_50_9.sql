SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 18
AND p.ViewCount >= 9.0
AND p.ViewCount <= 4459.0
AND ph.PostHistoryTypeId = 14
AND u.Views >= 268
AND u.Views <= 2252
AND c.CreationDate >= 654
AND c.CreationDate <= 878
AND b.Date >= 619

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;