SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 13
AND u.Reputation <= 2046
AND u.Views <= 334
AND v.CreationDate <= 164
AND u.CreationDate >= 72
AND u.CreationDate <= 827
AND b.Date <= 1247

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;