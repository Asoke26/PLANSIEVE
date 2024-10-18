SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 5
AND ph.PostHistoryTypeId = 12
AND c.CreationDate >= 278
AND c.CreationDate <= 1031
AND ph.CreationDate >= 966
AND ph.CreationDate <= 1199
AND b.Date <= 1036

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;