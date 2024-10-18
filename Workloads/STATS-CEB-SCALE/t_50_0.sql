SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 25
AND p.ViewCount >= 22.0
AND p.ViewCount <= 7574.0
AND ph.PostHistoryTypeId = 12
AND u.Views >= 488
AND u.Views <= 1101
AND c.CreationDate >= 455
AND c.CreationDate <= 628
AND b.Date >= 874

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;