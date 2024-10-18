SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 6
AND ph.PostHistoryTypeId = 37
AND c.CreationDate >= 203
AND c.CreationDate <= 1153
AND ph.CreationDate >= 705
AND ph.CreationDate <= 1453
AND b.Date <= 211

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;