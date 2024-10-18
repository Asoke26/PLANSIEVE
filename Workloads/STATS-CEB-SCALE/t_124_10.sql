SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 5
AND u.Reputation <= 14082
AND u.Views <= 156
AND v.CreationDate <= 798
AND u.CreationDate >= 131
AND u.CreationDate <= 1200
AND b.Date <= 393

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;