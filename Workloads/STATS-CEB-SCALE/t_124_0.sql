SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 33
AND u.Reputation <= 3
AND u.Views <= 321
AND v.CreationDate <= 1486
AND u.CreationDate >= 896
AND u.CreationDate <= 1432
AND b.Date <= 1362

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;