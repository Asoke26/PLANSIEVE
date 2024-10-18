SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 7
AND ph.PostHistoryTypeId = 19
AND c.CreationDate >= 199
AND c.CreationDate <= 606
AND ph.CreationDate >= 717
AND ph.CreationDate <= 1099
AND b.Date <= 1540

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;