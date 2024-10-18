SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 12
AND ph.PostHistoryTypeId = 35
AND c.CreationDate >= 785
AND c.CreationDate <= 962
AND ph.CreationDate >= 326
AND ph.CreationDate <= 787
AND b.Date <= 59

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;