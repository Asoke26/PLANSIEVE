SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 4
AND ph.PostHistoryTypeId = 9
AND c.CreationDate >= 807
AND c.CreationDate <= 960
AND ph.CreationDate >= 799
AND ph.CreationDate <= 1366
AND b.Date <= 1505

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;