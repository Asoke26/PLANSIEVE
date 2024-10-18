SELECT COUNT(*)
 FROM comments c,
postHistory ph,
badges b,
users u
WHERE c.Score = 5
AND ph.PostHistoryTypeId = 14
AND c.CreationDate >= 31
AND c.CreationDate <= 1147
AND ph.CreationDate >= 924
AND ph.CreationDate <= 1182
AND b.Date <= 73

AND u.Id = c.UserId
AND u.Id = ph.UserId
AND u.Id = b.UserId;