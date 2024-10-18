SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 6
AND ph.PostHistoryTypeId = 33
AND c.CreationDate >= 682
AND c.CreationDate <= 1114
AND ph.CreationDate >= 678
AND ph.CreationDate <= 1258
AND b.Date <= 383

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;