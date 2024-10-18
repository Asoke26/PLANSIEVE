SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 4
AND ph.PostHistoryTypeId = 5
AND c.CreationDate >= 43
AND c.CreationDate <= 249
AND ph.CreationDate >= 70
AND ph.CreationDate <= 419
AND b.Date <= 991

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;