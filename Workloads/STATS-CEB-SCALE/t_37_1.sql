SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 21
AND ph.PostHistoryTypeId = 38
AND c.CreationDate >= 287
AND c.CreationDate <= 1248
AND ph.CreationDate >= 690
AND ph.CreationDate <= 1273
AND b.Date <= 731

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;