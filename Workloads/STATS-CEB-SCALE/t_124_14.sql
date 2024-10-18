SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 3
AND u.Reputation <= 336
AND u.Views <= 870
AND v.CreationDate <= 1207
AND u.CreationDate >= 434
AND u.CreationDate <= 1371
AND b.Date <= 620

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;