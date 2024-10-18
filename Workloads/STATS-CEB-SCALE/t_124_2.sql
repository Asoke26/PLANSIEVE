SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND u.Reputation <= 3544
AND u.Views <= 460
AND v.CreationDate <= 258
AND u.CreationDate >= 27
AND u.CreationDate <= 1318
AND b.Date <= 845

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;