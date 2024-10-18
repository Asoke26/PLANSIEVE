SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 22
AND ph.PostHistoryTypeId = 6
AND c.CreationDate >= 1074
AND c.CreationDate <= 1335
AND ph.CreationDate >= 498
AND ph.CreationDate <= 639
AND b.Date <= 1210

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;