SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND u.Reputation <= 6431
AND u.Views <= 36
AND v.CreationDate <= 266
AND u.CreationDate >= 70
AND u.CreationDate <= 1473
AND b.Date <= 200

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;