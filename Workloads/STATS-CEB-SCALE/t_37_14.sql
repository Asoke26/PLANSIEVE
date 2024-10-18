SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 10
AND ph.PostHistoryTypeId = 8
AND c.CreationDate >= 109
AND c.CreationDate <= 1377
AND ph.CreationDate >= 1097
AND ph.CreationDate <= 1544
AND b.Date <= 1160

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;