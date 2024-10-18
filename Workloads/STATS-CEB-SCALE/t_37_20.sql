SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 7
AND ph.PostHistoryTypeId = 15
AND c.CreationDate >= 525
AND c.CreationDate <= 764
AND ph.CreationDate >= 366
AND ph.CreationDate <= 1249
AND b.Date <= 309

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;