SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 7
AND ph.PostHistoryTypeId = 3
AND c.CreationDate >= 1236
AND c.CreationDate <= 1427
AND ph.CreationDate >= 914
AND ph.CreationDate <= 1406
AND b.Date <= 1071

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;