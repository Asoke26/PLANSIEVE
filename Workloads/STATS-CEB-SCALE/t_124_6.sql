SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 6
AND u.Reputation <= 1151
AND u.Views <= 90
AND v.CreationDate <= 603
AND u.CreationDate >= 30
AND u.CreationDate <= 1067
AND b.Date <= 1060

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;