SELECT COUNT(*)
 FROM comments c,
posts p,
postHistory ph,
badges b,
users u
WHERE p.Score >= 26
AND p.ViewCount >= 1243.0
AND p.ViewCount <= 2478.0
AND ph.PostHistoryTypeId = 1
AND u.Views >= 41
AND u.Views <= 113
AND c.CreationDate >= 153
AND c.CreationDate <= 1225
AND b.Date >= 1420

AND u.Id = c.UserId
AND u.Id = p.OwnerUserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;