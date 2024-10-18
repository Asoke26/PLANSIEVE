SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 16
AND u.Reputation <= 1490
AND u.Views <= 1050
AND v.CreationDate <= 662
AND u.CreationDate >= 133
AND u.CreationDate <= 1427
AND b.Date <= 148

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;