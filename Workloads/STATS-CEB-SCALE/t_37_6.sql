SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 19
AND ph.PostHistoryTypeId = 13
AND c.CreationDate >= 621
AND c.CreationDate <= 1533
AND ph.CreationDate >= 484
AND ph.CreationDate <= 1386
AND b.Date <= 194

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;