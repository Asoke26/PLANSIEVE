SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 1
AND ph.PostHistoryTypeId = 1
AND c.CreationDate >= 77
AND c.CreationDate <= 1308
AND ph.CreationDate >= 172
AND ph.CreationDate <= 674
AND b.Date <= 397

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;