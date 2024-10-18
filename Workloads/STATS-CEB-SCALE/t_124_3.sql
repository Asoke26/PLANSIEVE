SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND u.Reputation <= 800
AND u.Views <= 1126
AND v.CreationDate <= 1336
AND u.CreationDate >= 45
AND u.CreationDate <= 937
AND b.Date <= 482

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;