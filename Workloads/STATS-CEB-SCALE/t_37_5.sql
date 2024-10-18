SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 2
AND ph.PostHistoryTypeId = 33
AND c.CreationDate >= 281
AND c.CreationDate <= 972
AND ph.CreationDate >= 377
AND ph.CreationDate <= 544
AND b.Date <= 1511

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;