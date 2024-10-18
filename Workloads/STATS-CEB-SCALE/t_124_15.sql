SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND u.Reputation <= 9
AND u.Views <= 29
AND v.CreationDate <= 945
AND u.CreationDate >= 81
AND u.CreationDate <= 1504
AND b.Date <= 728

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;