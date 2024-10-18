SELECT COUNT(*)
 FROM postHistory ph,
votes v,
users u,
badges b
WHERE ph.PostHistoryTypeId = 1
AND u.Reputation <= 1091
AND u.Views <= 330
AND v.CreationDate <= 566
AND u.CreationDate >= 128
AND u.CreationDate <= 978
AND b.Date <= 710

AND u.Id = b.UserId
AND u.Id = ph.UserId
AND u.Id = v.UserId;