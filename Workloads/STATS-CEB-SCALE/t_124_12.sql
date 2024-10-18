SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 34
AND u.Reputation <= 2205
AND u.Views <= 5441
AND v.CreationDate <= 1164
AND u.CreationDate >= 373
AND u.CreationDate <= 772
AND b.Date <= 1506

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;