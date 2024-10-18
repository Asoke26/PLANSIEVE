SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 0
AND ph.PostHistoryTypeId = 13
AND c.CreationDate >= 222
AND c.CreationDate <= 1404
AND ph.CreationDate >= 178
AND ph.CreationDate <= 713
AND b.Date <= 224

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;