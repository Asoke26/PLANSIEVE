SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 11
AND ph.PostHistoryTypeId = 33
AND c.CreationDate >= 291
AND c.CreationDate <= 1048
AND ph.CreationDate >= 371
AND ph.CreationDate <= 927
AND b.Date <= 1122

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;